import datetime
import json

import urllib3

import article_of_gzh as aog
import log
from redis_queue import RedisQueue

USER_AGENT = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15'

urllib3.disable_warnings()

if __name__ == '__main__':

    # 公众号队列
    gzh_rq = RedisQueue('gzh_rq', password='12345678')
    # 公众号详细参数队列
    details_rq = RedisQueue('details_rq', password='12345678')

    start_time = datetime.datetime.now()
    today = datetime.date.today()  # 今天
    yesterday = today - datetime.timedelta(days=1)  # 昨天

    yesterday_str = datetime.date.strftime(yesterday, "%Y%m%d")
    # 公众号
    while 1:
        gzh = gzh_rq.get_wait()
        if not gzh:
            break

        gzh_obj = json.loads(gzh[1])
        details_obj = json.loads(details_rq.get_wait()[1])

        aog.get_articles(gzh_obj, details_obj, yesterday_str)
        log.info("公众号: {} 处理完毕".format(gzh_obj['nickname']))
