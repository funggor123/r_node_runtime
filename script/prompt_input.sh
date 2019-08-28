#!/bin/bash

# Define
# Fix configurations
log_file_path="./log"
default_host_port="8090"

echo "Please provide the host port of this $service_name (Default: $default_host_port): "
read host_port
if [ -z "$host_port" ] ;
then host_port="$default_host_port"
fi


. ./make_json.sh
                                                                       
