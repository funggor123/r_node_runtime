#!/bin/bash

# Define
# service_name (Depends on service_name in install.sh)
service_name="testing"

service $service_name start
service $service_name status
                                  

