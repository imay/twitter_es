curl -XPUT 'http://localhost:9200/weibo/tweet/_mapping' -d '
{
    "tweet" : {
        "properties" : {
            "message" : {
                "type":"string", 
                "store": true,
                "index": "analyzed",
                "analyzer": "ik",
                "index_analyzer": "ik",
                "search_analyzer": "ik",
                "null_value": "null"
            },
            "time" : {
                "type":"date", 
                "store": true,
                "format": "date_time",
                "null_value": "1997-01-01T00:00:00.000+08:00"
            },
            "id": {
                "type": "long",
                "null_value": -1
            },
            "source" : {
                "type": "string",
                "store": true,
                "index": "not_analyzed",
                "null_value": "other"
            },
            "user" : {
                "type": "object",
                "properties": {
                    "id": {
                        "type": "long",
                        "null_value": -1
                    },
                    "name": {
                        "type": "string",
                        "store": false,
                        "index": "not_analyzed",
                        "null_value": "xxx"
                    },
                    "gender": {
                        "type": "string",
                        "store": false,
                        "index": "not_analyzed",
                        "null_value": "other"
                    },
                    "province": {
                        "type": "string",
                        "store": false,
                        "index": "not_analyzed",
                        "null_value": "other"
                    },
                    "city": {
                        "type": "string",
                        "store": false,
                        "index": "not_analyzed",
                        "null_value": "other"
                    },
                    "follower_count": {
                        "type": "long"
                    },
                    "freind_count": {
                        "type": "long"
                    },
                    "tweet_count": {
                        "type": "long"
                    }
                }
            }
        }
    }
}
'
