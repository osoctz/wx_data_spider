import random
import time

from redis_queue import RedisQueue
import info_of_article as ioa
import json

if __name__ == '__main__':
    _article_rq = RedisQueue('article_rq', password='12345678')
    # 公众号详细参数队列
    _details_rq = RedisQueue('details_rq', password='12345678')
    # 文章
    while 1:
        _article = _article_rq.get_wait()
        if not _article:
            break

        article_obj = json.loads(_article[1])
        details_obj = json.loads(_details_rq.get_wait()[1])

        ioa.get_num(article_obj['aid'], article_obj['link'], details_obj)
        time.sleep(random.randint(60, 65))
