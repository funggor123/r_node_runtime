#!/bin/bash

# Define
# Write configuration file
cat <<EOF > conf.json
{
    "crawl_second" : 300,
    "clear" : true,
    "port" : "$host_port",
    "mongodb_db_name" : "tk_node_v1",
    "mongodb_url" :  "localhost:27017",
    "log_file_path" : "./log/",
    "nodes" : [ 
        {
            "crawl_url" : "http://139.159.244.231/9214/",
            "address": "139.159.244.231", 
            "type" : "rnode"
        },
        {
            "crawl_url" : "http://39.108.80.53:8000/9215/",
            "address": "39.108.80.53", 
            "type" : "rnode"
        }
    ]
}
EOF

mv conf.json .. 
                                                                         
