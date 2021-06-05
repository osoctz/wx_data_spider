import random
import time
import lib.log as log
import requests
import urllib3

from producter.gzh_article_producter import product_article
from lib.pymysql_comm import UsingMysql

urllib3.disable_warnings()

USER_AGENT = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15'


def insert_article(fake_id, row):
    """
    文章->db
    :param fake_id:
    :param row:
    :return:
    """
    sql = "insert into wx_gzh_article(aid," \
          "fake_id," \
          "album_id," \
          "appmsgid," \
          "checking," \
          "copyright_type," \
          "cover," \
          "create_time," \
          "digest," \
          "has_red_packet_cover," \
          "is_pay_subscribe," \
          "item_show_type," \
          "itemidx," \
          "link," \
          "media_duration," \
          "mediaapi_publish_status," \
          "title," \
          "update_time) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    with UsingMysql() as um:
        # for row in res_list:
        param = (
            row['aid'], fake_id, row['album_id'], row['appmsgid'], row['checking'], row['copyright_type'],
            row['cover'], row['create_time'], row['digest'], row['has_red_packet_cover'], row['is_pay_subscribe'],
            row['item_show_type'], row['itemidx'], row['link'], row['media_duration'],
            row['mediaapi_publish_status'],
            row['title'], row['update_time'])

        article = fetch_one(row['aid'])
        if article is None:
            um.cursor.execute(sql, param)
            # print("文章:%s新增" % row['aid'])


def fetch_one(aid):
    """

    :param aid:
    :return:
    """
    sql = "select * from wx_gzh_article where aid=%s"
    with UsingMysql() as um:
        um.cursor.execute(sql, (aid))
        return um.cursor.fetchone()


def get_articles(_info, _details, _date):
    """
    获取文章
    :param _info:
    :param _date:
    :return:
    """
    headers = {
        "Cookie": _details['cookie'],
        "User-Agent": USER_AGENT
    }

    # 请求参数
    url = "https://mp.weixin.qq.com/cgi-bin/appmsg"
    begin = "0"
    params = {
        "action": "list_ex",
        "begin": begin,
        "count": "16",
        "fakeid": _info['fakeid'],
        "type": "9",
        "token": _details['token'],
        "lang": "zh_CN",
        "f": "json",
        "ajax": "1"
    }

    i = 0
    count = 0
    next_page = True

    while next_page:

        begin = i * 16

        res = requests.get(url, headers=headers, params=params, verify=False)
        params["begin"] = str(begin)

        # 微信流量控制, 退出
        if res.json()['base_resp']['ret'] == 200013:
            log.info("frequency control, stop at {}".format(str(begin)))
            return False

        # 如果返回的内容中为空则结束
        if 'app_msg_list' in res.json():
            app_list = res.json()['app_msg_list']
            if len(app_list) == 0:
                log.info("all article parsed")
                return True

            for row in app_list:
                # 判断文章更新时间
                update_date = time.strftime("%Y%m%d", time.localtime(row['update_time']))
                if int(update_date) > int(_date):
                    # 获取t+1文章，当天更新文章忽略
                    continue
                elif int(update_date) < int(_date):
                    next_page = False
                    # 只获取t+1文章
                    break
                else:
                    insert_article(_info['fakeid'], row)
                    product_article(row)
                    count += 1
            log.info("公众号:%s,%d" % (_info['nickname'], count))
            # count += len(app_list)
            # # 超过20篇文章则不再获取
            # if count > 15:
            #     break
        else:
            log.info("公众号:%s,响应:%s" % (_info['nickname'], res.json()))
            break
        i += 1
        time.sleep(random.randint(60, 65))

    return True
