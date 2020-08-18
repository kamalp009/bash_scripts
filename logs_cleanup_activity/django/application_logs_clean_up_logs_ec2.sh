#!/bin/bash

DAY=$(date -d "$D" '+%d')


if [ $DAY = "15" ]; then

    rm /home/ec2-user/abfl-django/logs/custom_*
    rm /home/ec2-user/abfl-django/logs/error_*
    rm /home/ec2-user/abfl-django/logs/gunicorn_supervisor_*

fi
    

if [ $DAY = "28" ]; then

    rm /home/ec2-user/abfl-django/logs/custom_*
    rm /home/ec2-user/abfl-django/logs/error_*
    rm /home/ec2-user/abfl-django/logs/gunicorn_supervisor_*

fi