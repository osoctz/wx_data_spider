import datetime

import requests
import json
from lib import spider_config


class WxPush:

    def __init__(self):
        self.app_id = spider_config.get('wx.test.app_id')
        self.app_secret = spider_config.get('wx.test.app_secret')
        self.template_id = spider_config.get('wx.test.template_id')
        self.access_token = ''
        self.expires_in = datetime.datetime.now()

    def get_access_token(self, app_id, app_secret):

        now = datetime.datetime.now()
        if self.expires_in > now:
            return self.access_token

        token_url = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=%s&secret=%s' % (
            str(app_id), str(app_secret))
        token_res = requests.get(token_url)
        data = json.loads(token_res.text)

        self.access_token = data['access_token']
        self.expires_in = now + datetime.timedelta(seconds=data['expires_in'])
        # print(data['expires_in'])
        return self.access_token

    def get_openid(self):

        _access_token = self.get_access_token(self.app_id, self.app_secret)

        res = requests.get(
            'https://api.weixin.qq.com/cgi-bin/user/get?access_token=%s&next_openid=' % str(_access_token))
        return json.loads(res.text)

    def send_wx(self, content):

        _res = self.get_openid()
        if _res['total'] > 0:
            open_ids = _res['data']['openid']

            for open_id in open_ids:
                _message = {
                    'touser': open_id,
                    'template_id': self.template_id,
                    'url': "https://github.com/osoctz",
                    'data': {
                        'token': {
                            'value': content['token'],
                            'color': '#0000CD'
                        },
                        'msg': {
                            'value': content['msg'],
                        }
                    }
                }

                self._send(_message)

    def _send(self, message):

        _access_token = self.get_access_token(self.app_id, self.app_secret)

        _url = 'https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=%s' % str(_access_token)
        requests.post(_url, json.dumps(message))


# if __name__ == '__main__':
#     _content = {
#         "token": "abc",
#         "msg": 'token失效,请尽快更新'
#     }
#
#     push = WxPush()
#     push.send_wx(_content)

    # now = datetime.datetime.now()
    # print(now - datetime.timedelta(seconds=3600))
