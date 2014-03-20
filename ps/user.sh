curl -XPUT 'http://10.208.63.52:8800/ps/user/_mapping' -d '
{
    "user" : {
        "properties" : {
            "id" : {
                "type": "string",
                "store": true,
                "index": "not_analyzed",
                "null_value": "other"
            }
        }
    }
}
'
