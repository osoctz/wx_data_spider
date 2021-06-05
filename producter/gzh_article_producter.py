from lib.redis_queue import RedisQueue
import json
import yaml
import os

config_dir = os.path.dirname(os.path.realpath(__file__))
config_file = config_dir + os.sep + "../conf/config.yaml"
with open(config_file, 'r') as file:
    file_data = file.read()
config = yaml.safe_load(file_data)

article_rq = RedisQueue('article_rq')


def product_article(_article):
    """
    公众号文章放入队列
    :return:
    """
    article_rq.put(json.dumps(_article, indent=4, ensure_ascii=False))
