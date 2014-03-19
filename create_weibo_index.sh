curl -XPUT 'http://10.208.63.52:8800/weibo' -d '{
    "settings" : {
        "number_of_shards" : 150,
        "number_of_replicas" : 2
    }
}'
