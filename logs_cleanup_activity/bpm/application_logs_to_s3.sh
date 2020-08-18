#!/bin/bash

current_time=$(date "+%Y.%m.%d-%H")
MONTH=$(date -d "$D" '+%m')
YEAR=$(date -d "$D" '+%Y')

catalina=/opt/tomcat/logs/catalina.out

if [ -f "$catalina" ]; then

    cp /opt/tomcat/logs/catalina.out /opt/tomcat/logs/catalina_$current_time.log
    aws s3 --region ap-south-1 cp \
    /opt/tomcat/logs/catalina_$current_time.log \
    s3://abfl-elk-application-logs/bpm_logs/application/$YEAR/$MONTH/
    
fi