import requests
import json


class WxPush:
    def __init__(self, _config):
        self.app_id = _config['app_id']
        self.app_secret = _config['app_secret']
        self.template_id = _config['template_id']
        self.access_token = ''

    def get_access_token(self, app_id, app_secret):
        url = 'https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=%s&secret=%s' % (
        str(app_id), str(app_secret))
        r = requests.get(url)
        data = json.loads(r.text)

        self.access_token = data['access_token']
        return self.access_token

    def get_user_list(self):
        if self.access_token == '':
            self.get_access_token(self.app_id, self.app_secret)

        res = requests.get(
            'https://api.weixin.qq.com/cgi-bin/user/get?access_token=%s&next_openid=' % str(self.access_token))
        return json.loads(res.text)

    def get_openid(self):
        """
        获取所有粉丝的openid
        """
        next_openid = ''
        url_openid = 'https://api.weixin.qq.com/cgi-bin/user/get?access_token=%s&next_openid=%s' % (
            self.access_token, next_openid)
        ans = requests.get(url_openid)
        print(ans.content)
        open_ids = json.loads(ans.content)['data']['openid']
        return open_ids


if __name__ == '__main__':
    wechat_config = {
        'app_id': 'wxfb4d4be01ac36b9b',
        'app_secret': '6574776536778d0f1cb5f5d55fef153b',
        'template_id': 'mqgbbAq4a74WcUpW7nFFnkGJLsekKMCrvhuUKSNChMA'
    }

    wx_push = WxPush(wechat_config)
    result = wx_push.get_user_list()

    msg = {
        'touser': 'ow_Jc5yELx768zm-MybjmrpBhxwY',
        'template_id': 'mqgbbAq4a74WcUpW7nFFnkGJLsekKMCrvhuUKSNChMA',
        'url': "http://git.metaq.cn",
        'data': {
            'token': {
                'value': 'a',
                'color': '#0000CD'
            },
            'msg': {
                'value': "eeeee",
            }
        }
    }

    json_data = json.dumps(msg)

    access_token = wx_push.get_access_token(wechat_config['app_id'], wechat_config['app_secret'])
    print(access_token)
    url = 'https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=%s' % str(access_token)
    r = requests.post(url, json_data)

    print(json.loads(r.text))
