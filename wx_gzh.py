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


def get_gzh():
    headers = {
        "Cookie": "appmsglist_action_3867627868=card; noticeLoginFlag=1; bizuin=3867627868; data_bizuin=3867627868; data_ticket=PFLdH8KTFoqck8b6MKOBxjvvZZytsXnqlrbHhsNskxk95Bx1C2TTzrpZbl5B30rr; rand_info=CAESIEOUvhYfbfVfHv3Sc0NCJKSjXiotopTwZGpj6g46sJb2; slave_bizuin=3867627868; slave_sid=cjR5b1ZwVXVuazBhTzFFQlAzdXJfZnd6NEZUV3RMM1gwMDFOZUtjcGNpR2hYeHNrRFlKUFhLZXAwVnNzaXBEeEIwVXZWdmtiNTdQU0tSNjhxWFZkUWNaUnB4dWVzeTBLSkg2bVhYeVlVeGg3STEwSkZaUXN3YXQwaHV5SjFqbmZJa1poRjJFa3o1MTZXSUJQ; slave_user=gh_7965c9886787; mm_lang=zh_CN; openid2ticket_oXFGH5iDKzBQ6pWlMAZIsF6qBXTI=iXD2n7GUnvWw2NDeUYL1CNUGU0Ix/lKmVLEzaCDLPk8=; ua_id=lqXoCDauQRRc01ElAAAAAEuEHYrQhDqcrKaUhzPmZQo=; xid=59e6bf9503dca56b80c4229755a51337; cert=SkufR6Y0bp4dkS0y_Cq6eSX5dyxorl3w; ticket=daed2c974f4edc2e3b72d2cdf65753bbbd046e75; ticket_id=gh_7965c9886787; uuid=d1c52d189d4a4f811eb10c34e8478dfe; openid2ticket_oVZO45QSMTUr-9x0qckHrK0W-MGk=x+dX8YI2vOhxAiVK5l9Mq6AZ8O2A7b0xK9xlCwsJJec=; noticeLoginFlag=1; openid2ticket_oTqyJ5Jv6R5pHF7H_84kLKEn-9Bc=PRtHBd4wIcy2dzIjv97kURIfI6SM1sZCeULYcooB6pQ=; wxuin=21222659575098; iip=0; pgv_pvid=1622491694; RK=PTgsGVrrcV; pac_uid=1_271129083",
        "User-Agent": config['user_agent']
    }

    url = " https://mp.weixin.qq.com/cgi-bin/searchbiz"
    begin = "0"
    params = {
        "action": "search_biz",
        "begin": begin,
        "count": "5",
        "query": 'xxx',
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


if __name__ == '__main__':
    get_gzh()
