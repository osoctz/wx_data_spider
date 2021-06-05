import redis
import os
import yaml

config_dir = os.path.dirname(os.path.realpath(__file__))
config_file = config_dir + os.sep + "../conf/config.yaml"

with open(config_file, 'r') as file:
    file_data = file.read()
config = yaml.safe_load(file_data)


class RedisQueue(object):
    def __init__(self, name, namespace='queue', **redis_kwargs):
        # redis的默认参数为：host='localhost', port=6379, db=0， 其中db为定义redis database的数量
        redis_cfargs={}

        if 'host' in config['redis']:
            redis_cfargs['host']=config['redis']['host']
        if 'port' in config['redis']:
            redis_cfargs['port']=config['redis']['port']
        if 'password' in config['redis']:
            redis_cfargs['password'] = config['redis']['password']

        redis_kwargs.update(redis_cfargs)
        self.__db = redis.Redis(**redis_kwargs)
        self.key = '%s:%s' % (namespace, name)

    def qsize(self):
        return self.__db.llen(self.key)

    def put(self, item):
        self.__db.rpush(self.key, item)

    def get_wait(self, timeout=None):
        # 返回队列第一个元素，如果为空则等待至有元素被加入队列（超时时间阈值为timeout，如果为None则一直等待）
        item = self.__db.blpop(self.key, timeout=timeout)
        return item

    def get_nowait(self):
        # 直接返回队列第一个元素，如果队列为空返回的是None
        item = self.__db.lpop(self.key)
        return item
