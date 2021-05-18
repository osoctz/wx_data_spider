import random
import time
from urllib.parse import parse_qs
from urllib.parse import urlparse

import requests
import urllib3
import yaml

from pymysql_comm import UsingMysql

urllib3.disable_warnings()
with open('config.yaml', 'r') as file:
    file_data = file.read()
config = yaml.safe_load(file_data)


def get_num(aid, link):
    url_obj = urlparse(link)
    qs = parse_qs(url_obj.query)

    mid = qs['mid']
    idx = qs['idx']
    sn = qs['sn']
    __biz = qs['__biz']
    pass_ticket = config['pass_ticket']
    appmsg_token = config['appmsg_token']
    key = config['key']
    uin = config['uin']

    _cookie = "appmsg_token=" + appmsg_token + ";devicetype=iMacMacBookPro171OSXOSX10.16build(20D91);lang=zh_CN;pass_ticket=" + pass_ticket + ";rewardsn=;version=12060110;wap_sid2=CKuglJ8HEooBeV9IQW1ONkRBQTExcThEcDRVZGpueE54anVXTW9JUEJ0Z2V0WnhUNGdrTHFKWUYxS3JfWTFwRzYwWndJdlVJWFlDZ0NYVW0yQ0xZVkZuVFZESUdtZU1UTmFROVk0Z0xPQ0tIaXhTZ19WdTFKMTVkNnZNR1o4M0JrZHlkb3dGcWk1Y3FUY1NBQUF+MO/ziIUGOA1AAQ==;wxtokenkey=777;wxuin=1944391723"
    headers = {
        "Cookie": _cookie,
        "User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_16) AppleWebKit/605.1.15 (KHTML, like Gecko) MicroMessenger/6.8.0(0x16080000) MacWechat/2.6.1(0x12060110) Chrome/39.0.2171.95 Safari/537.36 NetType/WIFI WindowsWechat"
    }

    data = {
        "is_only_read": "1",
        "is_temp_url": "0",
        "appmsg_type": "9",
        "reward_uin_count": "0"
    }
    params = {
        "__biz": __biz,
        "mid": mid,
        "idx": idx,
        "sn": sn,
        "key": key,
        "pass_ticket": pass_ticket,
        "appmsg_token": appmsg_token,
        "uin": uin,
        "wxtoken": '777'
    }

    app_url = "https://mp.weixin.qq.com/mp/getappmsgext"

    res = requests.post(app_url, headers=headers, data=data, params=params, verify=False)
    if 'appmsgstat' in res.json():
        insert_article_num(aid, res.json()['appmsgstat'])
        upd_article_proc(aid, 1)
        print("阅读:%d,点赞:%d,在看:%d" % (res.json()['appmsgstat']['read_num'], res.json()['appmsgstat']['old_like_num'],
                                     res.json()['appmsgstat']['like_num']))
    else:
        print("文章:%s 没有阅读量.响应:%s" % (aid, res.json()))


def upd_article_proc(aid, status):
    sql = "update wx_gzh_article set status=%s where aid=%s"
    with UsingMysql() as um:
        um.cursor.execute(sql, (status, aid))


def get_article():
    sql = "select * from wx_gzh_article where status=0"
    with UsingMysql() as um:
        um.cursor.execute(sql)
        return um.cursor.fetchall()


def insert_article_num(aid, ext_info):
    sql = "insert into wx_gzh_article_ext(aid,read_num,old_like_num,like_num,real_read_num,friend_like_num) values(" \
          "%s,%s,%s,%s,%s,%s)"
    with UsingMysql() as um:
        param = (
            aid, ext_info['read_num'], ext_info['old_like_num'], ext_info['like_num'], ext_info['real_read_num'],
            ext_info['friend_like_num'])

        um.cursor.execute(sql, param)


if __name__ == '__main__':
    # link = "https://mp.weixin.qq.com/s?__biz=Mzg5MzU2NzU3Nw==&mid=2247497675&idx=1&sn
    # =debc07da5c411b9c809a474e2e8adacc&chksm
    # =c02e60fdf759e9eb4726913dc7ab42e1c71b9b7bc5577122f2d1fdbc38fd0a148c7e295b1bf8&scene=38&key
    # =cf2d7277e7d5b35c7c8b18a848964f3a6e165ca9c452d65ca438dd48e456804d9a8dc3cf6085f7a87454a2b1447443d011556fa47d7dd333ecab30631bd5e1af02b1c3a3f76e05c33889faa624c939dfa22114744b5b93a2b40f4f1a56c37919169f2637c1b20456573b9b782369271703f452fd80b817fdaf3959cbe69b235e&ascene=3&uin=MTk0NDM5MTcyMw%3D%3D&devicetype=iMac+MacBookPro17%2C1+OSX+OSX+10.16+build(20D91)&version=12060110&nettype=WIFI&lang=zh_CN&fontScale=100&exportkey=AQoydgwR44wooWFl1fzcB0c%3D&pass_ticket=KMTlkka9BxbehdFke42n4Q3uMGA5vDF46aNeP8uumrR%2Bwk1Ts1CsAJaxKKdd56Qs&wx_header=0&fontgear=2.000000"
    article_list = get_article()
    print(len(article_list))
    for article in article_list:
        get_num(article['aid'], article['link'])
        time.sleep(random.randint(1, 5))
