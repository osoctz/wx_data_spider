# wx_data_spider
爬取微信公众号数据

## Step1 爬取目标微信公众号
```
python3 wx_gzh.py
```

## Step2 爬取微信公众号下的文章
```
python3 article_of_gzh.py
```

## Step3 爬取文章的阅读量及点赞数
```
python3 info_of_article.py
```

## Step4 爬取文章的正文,下载视频、图片
```
python3 video_image.py
```

## TODO

1.1分钟频率测试
2.加入队列，并行

## change log

## 2021-6-2 update

1.根据文章的update_time 过滤增量获取t+1的文章

2.2分钟请求一次，248个公众号文章爬取不需要更换cookie和token,总耗时29552s

## 2021-5-22 update

爬取文章 2分钟一次请求 连续爬取了140+公众号文章

## 2021-5-20 update

公众号爬取每20秒请求一次，大概50个公众号左右触发限流,禁用30～60分钟(网上说法，我实际会较长时间后再操作，后续再验证)
爬取公众号文章10～15秒请求一次，每次取前15篇文章，大概爬取20个公众号左右文章会触发限流

以上限流时限过后重新请求需更换token&cookie

爬取文章阅读量和点赞数必须提前用代理工具如charles获取pass_ticket&appmsg_token&key三个参数，目前1～5秒请求一次，30次左右触发流控

ps: 以上仅满足可用并非最优，且仅供学习用途。
