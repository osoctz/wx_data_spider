import datetime
import json
import yaml
import urllib3
import os

from lib import article_of_gzh as aog, log
from lib.redis_queue import RedisQueue

USER_AGENT = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Safari/605.1.15'

urllib3.disable_warnings()
config_dir = os.path.dirname(os.path.realpath(__file__))
config_file = config_dir + os.sep + "../conf/config.yaml"
with open(config_file, 'r') as file:
    file_data = file.read()
config = yaml.safe_load(file_data)

if __name__ == '__main__':

    # 公众号队列
    gzh_rq = RedisQueue('gzh_rq')
    # 公众号详细参数队列
    details_rq = RedisQueue('details_rq')

    start_time = datetime.datetime.now()
    today = datetime.date.today()  # 今天
    yesterday = today - datetime.timedelta(days=1)  # 昨天

    yesterday_str = datetime.date.strftime(yesterday, "%Y%m%d")
    # 公众号
    gzh = gzh_rq.get_wait()
    while 1:

        # 为空则阻塞直到从队列中拿到公众号
        if not gzh:
            gzh = gzh_rq.get_wait()

        gzh_obj = json.loads(gzh[1])
        details_obj = json.loads(details_rq.get_wait()[1])

        has_next = aog.get_articles(gzh_obj, details_obj, yesterday_str)

        # 如果处理成功则更新下次处理到公众号
        if has_next:
            gzh = gzh_rq.get_wait()
        log.info("公众号: {} 处理完毕".format(gzh_obj['nickname']))
