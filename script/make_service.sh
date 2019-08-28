#!/bin/bash

# Create a Service
echo "Install the program as background service ? (y/n)"
read create_service
if [ "$create_service" = "n" ] ; then
        sh start.sh
        exit 0
fi

current_dir="$PWD"
program_dir=$(dirname $current_dir)
current_user="$USER"

# Write Service File
cat <<EOF >  /etc/systemd/system/$service_name.service
[Unit]
Description=This is the service of ${service_name}
After=network-online.target
StartLimitIntervalSec=0

[Service]
Type=simple
User=${current_user}
WorkingDirectory=${program_dir}
ExecStart=${program_dir}/main

[Install]
WantedBy=multi-user.target
EOF

service $service_name start
service $service_name status

