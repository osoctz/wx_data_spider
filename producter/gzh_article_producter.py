from redis_queue import RedisQueue
import json

article_rq = RedisQueue('article_rq', password='12345678')


def product_article(_article):
    """
    公众号文章放入队列
    :return:
    """
    article_rq.put(json.dumps(_article, indent=4, ensure_ascii=False))
