#!/bin/bash

DAY=$(date -d "$D" '+%d')


if [ $DAY = "15" ]; then
    rm /home/ec2-user/abfl-django/logs/beat-access_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-abmu-loan-notifications_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-bpm_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-credit-vidya_*
    rm /home/ec2-user/abfl-django/logs/celery-worker_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-ce_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-ce-mobikwik_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-jocata_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-perfios_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-softcell_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-jocata_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-softcell-mobikwik_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-third-party_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-jocata_*

fi
    

if [ $DAY = "28" ]; then

    rm /home/ec2-user/abfl-django/logs/beat-access_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-abmu-loan-notifications_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-bpm_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-credit-vidya_*
    rm /home/ec2-user/abfl-django/logs/celery-worker_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-ce_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-ce-mobikwik_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-jocata_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-perfios_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-softcell_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-jocata_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-softcell-mobikwik_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-third-party_*
    rm /home/ec2-user/abfl-django/logs/celery-worker-jocata_*

fi