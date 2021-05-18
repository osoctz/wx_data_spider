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
    sql = "select * from wx_gzh"
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

            um.cursor.execute(sql, param)


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
    while True:
        begin = i * 5
        params["begin"] = str(begin)
        time.sleep(random.randint(1, 10))
        res = requests.get(url, headers=headers, params=params, verify=False)

        # 微信流量控制, 退出
        if res.json()['base_resp']['ret'] == 200013:
            print("frequencey control, stop at {}".format(str(begin)))
            break

        # 如果返回的内容中为空则结束
        if len(res.json()['app_msg_list']) == 0:
            print("all article parsed")
            break

        # 保存结果为JSON
        insert_article(res.json()['app_msg_list'])
        print("公众号:%s,%d" % (info['nickname'], len(res.json()['app_msg_list'])))
        i += 1


if __name__ == '__main__':

    for info in fetch_many():
        get_articles(info)
