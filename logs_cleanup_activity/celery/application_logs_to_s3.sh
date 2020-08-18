#!/bin/bash

current_time=$(date "+%Y.%m.%d-%H.%M")
MONTH=$(date -d "$D" '+%m')
YEAR=$(date -d "$D" '+%Y')


beat_access_file=/home/ec2-user/abfl-django/logs/beat-access.log.1
celery_worker_abmu_file=/home/ec2-user/abfl-django/logs/celery-worker-abmu-loan-notifications.log.1
celery_worker_bpm_file=/home/ec2-user/abfl-django/logs/celery-worker-bpm.log.1
celery_worker_file=/home/ec2-user/abfl-django/logs/celery-worker.log.1
celery_worker_credit_file=/home/ec2-user/abfl-django/logs/celery-worker-credit-vidya.log.1
celery_worker_ce_file=/home/ec2-user/abfl-django/logs/celery-worker-ce.log.1
celery_worker_ce_mobikwik_file=/home/ec2-user/abfl-django/logs/celery-worker-ce-mobikwik.log.1
celery_worker_jocata_file=/home/ec2-user/abfl-django/logs/celery-worker-jocata.log.1
celery_worker_perfios_file=/home/ec2-user/abfl-django/logs/celery-worker-perfios.log.1
celery_worker_softcell_file=/home/ec2-user/abfl-django/logs/celery-worker-softcell.log.1
celery_worker_softcell_mobikwik_file=/home/ec2-user/abfl-django/logs/celery-worker-softcell-mobikwik.log.1
celery_worker_third_file=/home/ec2-user/abfl-django/logs/celery-worker-third-party.log.1



if [ -f "$beat_access_file" ]; then

    cp /home/ec2-user/abfl-django/logs/beat-access.log.1 /home/ec2-user/abfl-django/logs/beat-access_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/beat-access_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/beat-access.log.1
fi

if [ -f "$celery_worker_abmu_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-abmu-loan-notifications.log.1 /home/ec2-user/abfl-django/logs/celery-worker-abmu-loan-notifications_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-abmu-loan-notifications_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-abmu-loan-notifications.log.1
fi

if [ -f "$celery_worker_bpm_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-bpm.log.1 /home/ec2-user/abfl-django/logs/celery-worker-bpm_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-bpm_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-bpm.log.1
fi

if [ -f "$celery_worker_credit_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-credit-vidya.log.1 /home/ec2-user/abfl-django/logs/celery-worker-credit-vidya_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-credit-vidya_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-credit-vidya.log.1
fi

if [ -f "$celery_worker_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker.log.1 /home/ec2-user/abfl-django/logs/celery-worker_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker.log.1
fi

if [ -f "$celery_worker_ce_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-ce.log.1 /home/ec2-user/abfl-django/logs/celery-worker-ce_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-ce_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-ce.log.1
fi

if [ -f "$celery_worker_ce_mobikwik_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-ce-mobikwik.log.1 /home/ec2-user/abfl-django/logs/celery-worker-ce-mobikwik_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-ce-mobikwik_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-ce-mobikwik.log.1
fi

if [ -f "$celery_worker_jocata_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-jocata.log.1 /home/ec2-user/abfl-django/logs/celery-worker-jocata_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-jocata_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-jocata.log.1
fi

if [ -f "$celery_worker_perfios_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-perfios.log.1 /home/ec2-user/abfl-django/logs/celery-worker-perfios_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-perfios_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-perfios.log.1
fi

if [ -f "$celery_worker_softcell_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-softcell.log.1 /home/ec2-user/abfl-django/logs/celery-worker-softcell_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-softcell_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-softcell.log.1
fi

if [ -f "$celery_worker_softcell_mobikwik_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-softcell-mobikwik.log.1 /home/ec2-user/abfl-django/logs/celery-worker-softcell-mobikwik_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-softcell-mobikwik_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-softcell-mobikwik.log.1
fi

if [ -f "$celery_worker_third_file" ]; then

    cp /home/ec2-user/abfl-django/logs/celery-worker-third-party.log.1 /home/ec2-user/abfl-django/logs/celery-worker-third-party_$current_time.log
    aws s3 --region ap-south-1 cp \
    /home/ec2-user/abfl-django/logs/celery-worker-third-party_$current_time.log \
    s3://abfl-elk-application-logs/celery_logs/application/$YEAR/$MONTH/
    rm /home/ec2-user/abfl-django/logs/celery-worker-third-party.log.1
fi