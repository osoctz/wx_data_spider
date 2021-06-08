import json

from lib.redis_queue import RedisQueue

article_rq = RedisQueue('article_rq')


def product_article(_article):
    """
    公众号文章放入队列
    :return:
    """
    article_rq.put(json.dumps(_article, indent=4, ensure_ascii=False))
