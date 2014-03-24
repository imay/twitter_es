curl -XPUT 'http://localhost:9200/weibo/tweet/1' -d ' {
       "user" : {
                    "id" : 3044554790,
                  "name" : "哈喽孙文",
        "follower_count" : 173,
          "friend_count" : 2000,
           "tweet_count" : 2043,
                "gender" : "男",
                  "city" : "其他",
              "province" : "其他"
    },
       "time" : "2014-03-11T11:59:59.000+08:00",
         "id" : 3686906195387272,
    "message" : "【北京限价地王售价4年翻3倍 开发商背弃承诺】于是，广渠路36号地王的获得者北京城开和北京城建在土地招标文件中承诺了较低的意向销售价9500元/平米，并以低于最高价30.1亿4个亿的价格竞得土地使用权... http://t.cn/zQAKxrx",
     "source" : "新浪微博"
}
'
