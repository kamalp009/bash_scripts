#!/bin/bash

DAY=$(date -d "$D" '+%d')


if [ $DAY = "28" ]; then

    rm /home/ec2-user/abfl-django/logs/catalina_*

fi