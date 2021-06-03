from urllib.parse import parse_qs
from urllib.parse import urlparse

import requests
import urllib3
import log

from pymysql_comm import UsingMysql

urllib3.disable_warnings()


def get_num(aid, link, details_obj):
    url_obj = urlparse(link)
    qs = parse_qs(url_obj.query)

    mid = qs['mid'][0]
    idx = qs['idx'][0]
    sn = qs['sn'][0]
    __biz = qs['__biz'][0]
    pass_ticket = details_obj['pass_ticket']
    appmsg_token = details_obj['appmsg_token']
    key = details_obj['key']
    uin = details_obj['uin']

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
        "wxtoken": '777',
        "f": "json"
    }

    app_url = "https://mp.weixin.qq.com/mp/getappmsgext"

    res = requests.post(app_url, headers=headers, data=data, params=params, verify=False)
    if 'appmsgstat' in res.json():
        insert_article_num(aid, res.json()['appmsgstat'])

        log.info("阅读:%d,点赞:%d,在看:%d" % (res.json()['appmsgstat']['read_num'],
                                        res.json()['appmsgstat']['old_like_num'],
                                        res.json()['appmsgstat']['like_num']))
    else:
        log.info("文章:%s 没有阅读量.响应:%s" % (aid, res.json()))


def insert_article_num(aid, ext_info):
    sql = "insert into wx_gzh_article_ext(aid,read_num,old_like_num,like_num,real_read_num,friend_like_num) values(" \
          "%s,%s,%s,%s,%s,%s)"
    with UsingMysql() as um:
        param = (
            aid, ext_info['read_num'], ext_info['old_like_num'], ext_info['like_num'], ext_info['real_read_num'],
            ext_info['friend_like_num'])

        um.cursor.execute(sql, param)
