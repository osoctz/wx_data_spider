import datetime
import json

from lib import article_of_gzh as aog, log, spider_config
from lib.gzh_ring import GzhRing
from lib.redis_queue import RedisQueue

if __name__ == '__main__':

    # 公众号队列
    gzh_rq = RedisQueue('gzh_rq')
    gzh_ring = GzhRing(spider_config.get_list("gzh"))

    start_time = datetime.datetime.now()
    today = datetime.date.today()
    yesterday = today - datetime.timedelta(days=1)

    fmt = spider_config.get("common.fmt")
    yesterday_str = datetime.date.strftime(yesterday, fmt)
    # 公众号
    gzh = gzh_rq.get_wait()
    while gzh:

        gzh_obj = json.loads(gzh[1] if isinstance(gzh, tuple) else gzh)
        details_obj = gzh_ring.next()

        has_next = aog.get_articles(gzh_obj, details_obj, yesterday_str)
        log.info("公众号: {} 处理完毕".format(gzh_obj['nickname']))
        # 如果处理成功则更新下次处理到公众号
        if has_next:
            gzh = gzh_rq.get_nowait()
            if not gzh:
                log.info('公众号队列为空,退出！')
