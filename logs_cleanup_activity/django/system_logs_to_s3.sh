#!/bin/bash

current_time=$(date "+%Y.%m.%d-%H.%M")
MONTH=$(date -d "$D" '+%m')
YEAR=$(date -d "$D" '+%Y')


user=/var/log/user.log.1
daemon=/var/log/daemon.log.1
syslog=/var/log/syslog.1

if [ -f "$user" ]; then

    cp /var/log/user.log.1 /var/log/user_$current_time.log
    aws s3 --region ap-south-1 cp \
    /var/log/user_$current_time.log \
    s3://abfl-elk-application-logs/django_logs/system/$YEAR/$MONTH/
    rm /var/log/user.log.1
fi

if [ -f "$daemon" ]; then

    cp /var/log/daemon.log.1 /var/log/daemon_$current_time.log
    aws s3 --region ap-south-1 cp \
    /var/log/daemon_$current_time.log \
    s3://abfl-elk-application-logs/django_logs/system/$YEAR/$MONTH/
    rm /var/log/daemon.log.1
fi

if [ -f "$syslog" ]; then

    cp /var/log/syslog.1 /var/log/syslog_$current_time
    aws s3 --region ap-south-1 cp \
    /var/log/syslog_$current_time \
    s3://abfl-elk-application-logs/django_logs/system/$YEAR/$MONTH/
    rm /var/log/syslog.1
fi
