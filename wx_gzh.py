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


def insert_many_gzh(list):
    sql = "insert into wx_gzh(fakeid,nickname,alias,round_head_img,service_type,signature) values(%s,%s,%s,%s,%s,%s)"
    with UsingMysql() as um:
        for row in list:
            param = (
                row['fakeid'], row['nickname'], row['alias'], row['round_head_img'], int(row['service_type']),
                row['signature'])

            um.cursor.execute(sql, param)


def insert_gzh(row):
    sql = "insert into wx_gzh(fakeid,nickname,alias,round_head_img,service_type,signature) values(%s,%s,%s,%s,%s,%s)"
    with UsingMysql() as um:
        param = (
            row['fakeid'], row['nickname'], row['alias'], row['round_head_img'], int(row['service_type']),
            row['signature'])

        um.cursor.execute(sql, param)


def get_gzh_by_keyword():
    headers = {
        "Cookie": config['cookie'],
        "User-Agent": config['user_agent']
    }

    url = " https://mp.weixin.qq.com/cgi-bin/searchbiz"
    begin = "0"
    params = {
        "action": "search_biz",
        "begin": begin,
        "count": "5",
        "query": '学而思',
        "token": config['token'],
        "lang": "zh_CN",
        "f": "json",
        "ajax": "1"
    }
    i = 0
    while True:
        begin = i * 5
        params["begin"] = str(begin)
        time.sleep(random.randint(10, 20))
        res = requests.get(url, headers=headers, params=params, verify=False)

        # 微信流量控制, 退出
        if res.json()['base_resp']['ret'] == 200013:
            print("frequency control, stop at {}".format(str(begin)))
            break

        # 如果返回的内容中为空则结束
        if len(res.json()['list']) == 0:
            print("all gzh iterator")
            break

        # 保存db
        insert_many_gzh(res.json()['list'])
        print("completed %d" % len(res.json()['list']))
        i += 1


def get_input(path):
    f = open(path, 'r', encoding='utf8')
    line = f.readline()
    data = []
    while line:
        data.append(line.strip())
        line = f.readline()
    f.close()
    return data


def get_gzh():
    data = get_input("input.txt")

    headers = {
        "Cookie": config['cookie'],
        "User-Agent": config['user_agent']
    }

    url = " https://mp.weixin.qq.com/cgi-bin/searchbiz"
    begin = "0"

    for d in data:
        try:
            params = {
                "action": "search_biz",
                "begin": begin,
                "count": "5",
                "scene": "1",
                "query": d,
                "token": config['token'],
                "lang": "zh_CN",
                "f": "json",
                "ajax": "1"
            }
            # time.sleep(30)
            res = requests.get(url, headers=headers, params=params, verify=False)
            # 微信流量控制, 退出
            if res.json()['base_resp']['ret'] == 200013:
                print("frequency control, stop at {}".format(d))
                break
            # 保存db
            for r in res.json()['list']:
                if r['nickname'] == d:
                    insert_gzh(r)
                    print("completed %s" % d)
                    break
            time.sleep(20)
        except Exception as e:
            print('Error:%s' % d)


if __name__ == '__main__':
    get_gzh()
