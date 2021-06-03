import random
import time
import datetime

import requests
import urllib3
import yaml

from pymysql_comm import UsingMysql

urllib3.disable_warnings()
config_dir = os.path.dirname(os.path.realpath(__file__))
config_file = config_dir + os.sep + "config.yaml"
with open(config_file, 'r') as file:
    file_data = file.read()
config = yaml.safe_load(file_data)


def fetch_many():
    sql = "select * from wx_gzh where status=0"
    with UsingMysql() as um:
        um.cursor.execute(sql)
        return um.cursor.fetchall()


def insert_article(fake_id, row):
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


def get_articles(_info, _date):
    """
    获取文章
    :param _info:
    :param _date:
    :return:
    """
    headers = {
        "Cookie": config['cookie'],
        "User-Agent": config['user_agent']
    }

    # https://mp.weixin.qq.com/cgi-bin/appmsg?action=list_ex&begin=0&count=5&fakeid=MzAwNDA2OTM1Ng==&type=9&query=&token=867596045&lang=zh_CN&f=json&ajax=1
    # 请求参数
    url = "https://mp.weixin.qq.com/cgi-bin/appmsg"
    begin = "0"
    params = {
        "action": "list_ex",
        "begin": begin,
        "count": "16",
        "fakeid": _info['fakeid'],
        "type": "9",
        "token": config['token'],
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
            print("frequencey control, stop at {}".format(str(begin)))
            return False

        # 如果返回的内容中为空则结束
        if 'app_msg_list' in res.json():
            app_list = res.json()['app_msg_list']
            if len(app_list) == 0:
                print("all article parsed")
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
                    count += 1
            print("公众号:%s,%d" % (_info['nickname'], count))
            # count += len(app_list)
            # # 超过20篇文章则不再获取
            # if count > 15:
            #     break
        else:
            print("公众号:%s,响应:%s" % (_info['nickname'], res.json()))
            break
        i += 1
        time.sleep(random.randint(120, 122))

    return True


def upd_gzh_proc(fakeid, status):
    sql = "update wx_gzh set status=%s where fakeid=%s"
    with UsingMysql() as um:
        um.cursor.execute(sql, (status, fakeid))


def fetch_one(aid):
    sql = "select * from wx_gzh_article where aid=%s"
    with UsingMysql() as um:
        um.cursor.execute(sql, (aid))
        return um.cursor.fetchone()


if __name__ == '__main__':

    start_time = datetime.datetime.now()
    today = datetime.date.today()  # 今天
    yesterday = today - datetime.timedelta(days=1)  # 昨天

    # current_date = time.strftime("%Y%m%d", time.localtime(time.time()))
    yesterday_str = datetime.date.strftime(yesterday, "%Y%m%d")
    for info in fetch_many():
        if get_articles(info, yesterday_str):
            upd_gzh_proc(info['fakeid'], 1)
        else:
            break
    end_time = datetime.datetime.now()
    print('获取文章总计耗时 %d 秒' % (end_time - start_time).seconds)
    # print(time.strftime("%Y%m%d", time.localtime(time.time())))
    # print(time.strftime("%Y%m%d", time.localtime(1611924803)))
    # print(int('20210602') > int('20210129'))
    # print(fetch_one('2650826424_3') != None)
    # article = fetch_one('2650826424_3')
    # if article is not None:
    #     print(article)

    #获取文章总计耗时 3521 秒
