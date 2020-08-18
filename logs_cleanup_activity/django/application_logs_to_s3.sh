#!/bin/bash

current_time=$(date "+%Y.%m.%d-%H.%M")
MONTH=$(date -d "$D" '+%m')
YEAR=$(date -d "$D" '+%Y')


custom_file=/home/ec2-user/abfl-django/logs/custom.log.1
error_file=/home/ec2-user/abfl-django/logs/error.log.1
gunicorn_supervisor_file=/home/ec2-user/abfl-django/logs/gunicorn_supervisor.log.1

if [ -f "$custom_file" ]; then

    cp /home/ec2-user/abfl-django/logs/custom.log.1 /home/ec2-user/abfl-django/logs/custom_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/custom_$current_time.log \
    s3://abfl-elk-application-logs/django_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/custom.log.1
fi

if [ -f "$error_file" ]; then

    cp /home/ec2-user/abfl-django/logs/error.log.1 /home/ec2-user/abfl-django/logs/error_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/error_$current_time.log \
    s3://abfl-elk-application-logs/django_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/error.log.1
fi

if [ -f "$gunicorn_supervisor_file" ]; then

    cp /home/ec2-user/abfl-django/logs/gunicorn_supervisor.log.1 /home/ec2-user/abfl-django/logs/gunicorn_supervisor_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/gunicorn_supervisor_$current_time.log \
    s3://abfl-elk-application-logs/django_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/gunicorn_supervisor.log.1
fi