import json
import os
import re
import urllib.request
from urllib.parse import parse_qs
from urllib.parse import urlparse

import requests
import urllib3
import yaml
from lxml import etree

from lib import log
from lib.pymysql_comm import UsingMysql
from lib.redis_queue import RedisQueue

# 最大视频
MAX_VIDEO_SIZE = 524288000
urllib3.disable_warnings()
current_dir = os.path.dirname(os.path.realpath(__file__))
config_file = current_dir + os.sep + "../conf/config.yaml"
with open(config_file, 'r') as file:
    file_data = file.read()
config = yaml.safe_load(file_data)


def extract_context(link):
    """
    提取正文
    :param link: 文章地址
    :return:
    """
    headers = {
        # "Cookie": config['cookie'],
        "User-Agent": config['user_agent']
    }

    req = urllib.request.Request(url=link, headers=headers)
    with urllib.request.urlopen(req) as response:
        html = response.read()
        # print(html)
        # 对 html文本进行处理 获得一个_Element对象
        dom = etree.HTML(html)
        # texts = dom.xpath('// *[ @ id = "js_content"] //section/text()')
        root = dom.xpath('// *[ @ id = "js_content"]')
        # print(link)
        if len(root) > 0:
            return root[0].xpath('string(.)')
        return ""


def download_images(url):
    """
    下载图片
    :param url:
    :return:
    """
    headers = {
        # "Cookie": config['cookie'],
        "User-Agent": config['user_agent']
    }

    req = urllib.request.Request(url=url, headers=headers)
    with urllib.request.urlopen(req) as response:
        html = response.read()
        dom = etree.HTML(html)
        images = dom.xpath('// *[ @ id = "js_content"]//img')

        image_links = []
        for image in images:
            image_link = image.attrib.get("data-src")
            fmt = image.attrib.get("data-type")

            if image_link is None:
                image_link = image.attrib.get("src")
                fmt = 'png'

            url_obj = urlparse(image_link)
            segments = url_obj.path.split('/')
            filename = segments[len(segments) - 2]

            local_path = current_dir + os.sep + "../output/images/" + filename + "." + fmt
            image_links.append((image_link, local_path))
            try:
                res = requests.get(url=image_link, headers=headers, stream=True, timeout=5)
                if res.status_code == 200:
                    with open(local_path, 'wb') as f:
                        for chunk in res.iter_content(chunk_size=512):
                            if chunk:
                                f.write(chunk)
                        f.close()
            except Exception as e:
                print(e)
                print(image_link)
        return image_links


def download_video(link):
    """
    下载视频到本地目录
    :param link:
    :return:
    """
    res = requests.get(link)
    url_obj = urlparse(link)
    qs = parse_qs(url_obj.query)

    json_res = res.text  # 匹配:wxv_1105179750743556096
    regex = r"wxv_.{19}"
    result = re.search(regex, json_res)
    if result:
        vid = result.group(0)
        biz = qs['__biz']
        mid = qs['mid']
        idx = qs['idx']

        url_info = get_video_url(biz, mid, idx, vid)
        if len(url_info) == 0:
            print("无视频")
            return None

        url = url_info[0]['url']
        try:
            if url_info[0]['filesize'] < MAX_VIDEO_SIZE:
                url = url_info[0]['url']
            elif url_info[1]['filesize'] < MAX_VIDEO_SIZE:
                url = url_info[1]['url']
            else:
                url = url_info[2]['url']

            headers = {
                # "Cookie": _cookie,
                "User-Agent": config['user_agent']
            }
            res = requests.get(url=url, headers=headers, stream=True, timeout=5)

            if res.status_code == 200:
                log.info("开始下载视频%s", vid)
                video_path = current_dir + os.sep + "../output/videos/" + vid + '.mp4'
                with open(video_path, 'wb') as f:
                    for chunk in res.iter_content(chunk_size=512):
                        if chunk:
                            f.write(chunk)
                    f.close()
                log.info("视频%s下载结束", vid)
                return url, video_path
        except requests.exceptions.RequestException as e:
            log.error("视频地址" + vid + "无法下载,原因:%s", e)
        # print(e)
    return None


def get_video_url(biz, mid, idx, vid):
    """
    下载视频
    :param biz:
    :param mid:
    :param idx:
    :param vid:
    :return:
    """
    params = {
        "action": "get_mp_video_play_url",
        "__biz": biz,
        "mid": mid,
        "idx": idx,
        "vid": vid,
        "f": "json"
    }

    url = "https://mp.weixin.qq.com/mp/videoplayer"

    headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:23.0) Gecko/20100101 Firefox/23.0'}
    res = requests.get(url=url, headers=headers, params=params, timeout=5)

    _content = json.loads(res.content.decode())
    url_info = _content.get("url_info")
    return url_info


def save_article_content(aid, _content):
    sql = "insert into wx_gzh_article_content(aid,content) values(%s,%s)"
    with UsingMysql() as um:
        param = (aid, _content)
        um.cursor.execute(sql, param)


def save_article_image(aid, _images):
    sql = "insert into wx_gzh_article_image(aid,origin_image_link,image) values(%s,%s,%s)"
    with UsingMysql() as um:
        for img in _images:
            param = (aid, img[0], img[1])
            um.cursor.execute(sql, param)


def save_article_video(aid, _video):
    sql = "insert into wx_gzh_article_video(aid,origin_video_link,video) values(%s,%s,%s)"
    with UsingMysql() as um:
        param = (aid, _video[0], _video[1])
        um.cursor.execute(sql, param)


if __name__ == '__main__':

    _article_rq = RedisQueue('article_rq')

    # 文章
    while 1:
        _article = _article_rq.get_wait()
        if not _article:
            break

        article_obj = json.loads(_article[1])
        # 正文
        content = extract_context(article_obj['link'])
        save_article_content(article_obj['aid'], content.strip())
        # print("%s 正文获取结束" % article['title'])
        # 图片
        images = download_images(article_obj['link'])
        # print("%s 图片获取结束" % article['title'])
        if len(images) > 0:
            save_article_image(article_obj['aid'], images)
        # 视频
        video = download_video(article_obj['link'])
        # print("%s 视频获取结束" % article['title'])
        if video is not None:
            save_article_video(article_obj['aid'], video)
        # upd_article_proc(article['aid'], 1)
