from lib.redis_queue import RedisQueue
from lib import gzh, log
import time
import json

gzh_rq = RedisQueue('gzh_rq')  # 新建队列名为rq


def product_gzh():
    """
    公众号放入队列
    :return:
    """
    gzh_list = gzh.fetch_all()
    for i in range(len(gzh_list)):
        gzh_rq.put(json.dumps(gzh_list[i], indent=4, ensure_ascii=False))
        log.info("%s 公众号: %s enqueue ", time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()), gzh_list[i]['nickname'])


if __name__ == '__main__':
    product_gzh()
