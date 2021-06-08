import random
import time

import requests
import urllib3
import yaml

from lib.pymysql_comm import UsingMysql

urllib3.disable_warnings()

with open('conf/config.yaml', 'r') as file:
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
        "Cookie": 'appmsglist_action_3867627868=card; ua_id=0f77YFH7ICMmjMkzAAAAAMmcHVSX7enBXu5LWdDmEzQ=; wxuin=22946322076355; rand_info=CAESIPmQYHInjGhp0sYmqFtENjqcHSxa84dIz5YxNDob/x+5; slave_bizuin=3867627868; data_bizuin=3867627868; bizuin=3867627868; data_ticket=a6o9AMO1A1G0Vp2LMWp6NG0dXj9WDUlhMvNc/NzvLY5KBxty/rydsVNcXczxfsVD; slave_sid=Q1hTSXZ5T1ZKVU1NOUhmSUFxcEIwTEZ3WTB1MTZwQ0lfbTAxU0d4OXIyc3V6MVkzQnlmOW5XX1dZSzZtXzI1TkdRc21TVEU1NkE1UnZoVkJnN2VQa25XZlpHamFKd3hUNlBGRHBOWEVSNWxaRFlIdUxvUEJTM1dvZ3lzMktrYjFnQ1dFaUtKSWVRTm9TMU12; slave_user=gh_7965c9886787; xid=ce146304269baa6835159eadfc1fd27a; mm_lang=zh_CN; sig_login=h015d149ff4b76ef18d39849caf6c18bc56bfc4eeaa2f60bcfe28e9b44ff0316ab2ad9e2b378d7f436e; pgv_info=ssid=s6186439936; pgv_pvid=1224720304; sig=h0128ca6069cf4601a11a01f991f930382afad90ab8aeec41ae139f4471f352c62c092e7fc37df14840',
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
                "token": '320681747',
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
