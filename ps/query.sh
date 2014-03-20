curl -XPUT 'http://10.208.63.52:8800/ps/query/_mapping' -d '
{
    "query" : {
        "properties" : {
            "query" : {
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
            "id" : {
                "type": "string",
                "store": true,
                "index": "no",
                "null_value": "other"
            },
            "province" : {
                "type" : "string",
                "index": "not_analyzed"
            },
            "city" : {
                "type" : "string",
                "index": "not_analyzed"
            }
        }
    }
}
'
