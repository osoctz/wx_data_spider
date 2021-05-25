import random
import time

import requests
import urllib3
import yaml

from pymysql_comm import UsingMysql

urllib3.disable_warnings()
with open('config.yaml', 'r') as file:
    file_data = file.read()
config = yaml.safe_load(file_data)


def fetch_many():
    sql = "select * from wx_gzh where status=0"
    with UsingMysql() as um:
        um.cursor.execute(sql)
        return um.cursor.fetchall()


def insert_article(res_list):
    sql = "insert into wx_gzh_article(aid," \
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
          "update_time) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    with UsingMysql() as um:
        for row in res_list:
            param = (
                row['aid'], row['album_id'], row['appmsgid'], row['checking'], row['copyright_type'],
                row['cover'], row['create_time'], row['digest'], row['has_red_packet_cover'], row['is_pay_subscribe'],
                row['item_show_type'], row['itemidx'], row['link'], row['media_duration'],
                row['mediaapi_publish_status'],
                row['title'], row['update_time'])

            article = fetch_one(row['aid'])
            if article is None:
                um.cursor.execute(sql, param)
                # print("文章:%s新增" % row['aid'])


def get_articles(info):
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
        "count": "5",
        "fakeid": info['fakeid'],
        "type": "9",
        "token": config['token'],
        "lang": "zh_CN",
        "f": "json",
        "ajax": "1"
    }

    i = 0
    count = 0

    while i < 3:
        begin = i * 5
        params["begin"] = str(begin)
        time.sleep(random.randint(10, 15))
        res = requests.get(url, headers=headers, params=params, verify=False)

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

            # 保存结果为JSON
            insert_article(app_list)
            print("公众号:%s,%d" % (info['nickname'], len(res.json()['app_msg_list'])))
            count += len(app_list)
            # 超过20篇文章则不再获取
            if count > 15:
                break
        else:
            print("公众号:%s,响应:%s" % (info['nickname'],res.json()))
        i += 1

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
    for info in fetch_many():
        if get_articles(info):
            upd_gzh_proc(info['fakeid'], 1)
        else:
            break

    # print(fetch_one('2650826424_3') != None)
    # article = fetch_one('2650826424_3')
    # if article is not None:
    #     print(article)
