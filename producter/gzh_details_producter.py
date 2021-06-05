from lib.redis_queue import RedisQueue
import os
import time
import json
from lib import log
import yaml

details_rq = RedisQueue('details_rq')
details_info_rq = RedisQueue('details_info_rq')


def get_config():
    """
    获取配置
    :return:
    """
    config_dir = os.path.dirname(os.path.realpath(__file__))
    config_file = config_dir + os.sep + "../conf/config.yaml"
    with open(config_file, 'r') as file:
        file_data = file.read()
        return yaml.safe_load(file_data)


def product_details():
    """
    公众号明细(主要是公众号接口需要更换的cookie、token等参数)放入队列
    :return:
    """
    config = get_config()
    details_list = config['gzh']

    if details_rq.qsize() < 1:
        for i in range(len(details_list)):
            details_rq.put(json.dumps(details_list[i], indent=4, ensure_ascii=False))
            # log.info("%s 公众号: %s enqueue ", time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            #          details_list[i]['uin'])
    else:

        log.debug("目前公众号队列大小 %d", details_rq.qsize())

    if details_info_rq.qsize() < 1:
        for i in range(len(details_list)):
            details_info_rq.put(json.dumps(details_list[i], indent=4, ensure_ascii=False))
            # log.info("%s 公众号: %s enqueue ", time.strftime("%Y-%m-%d %H:%M:%S", time.localtime()),
            #          details_list[i]['uin'])
    else:

        log.debug("目前公众号队列大小 %d", details_info_rq.qsize())


if __name__ == '__main__':

    while 1:
        product_details()
        time.sleep(2)
