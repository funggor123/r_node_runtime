#!/bin/bash

# Define
# software_name (no dependency)
# service_name (no dependency)
software_name=casino_decision_node
service_name=cd_node

echo "Hey, it is going to install $software_name now"
echo "Are you ready?(y/n)"
read choice
if [ "$choice" = "n" ] ; then
        echo "The installation has been terminated"
        exit 0
fi       
echo "OK, lets get start"     

. ./prompt_input.sh  

. ./make_service.sh    
   
if [ "$create_service" = "n" ] ; 
then
	sh start.sh	
fi
       
