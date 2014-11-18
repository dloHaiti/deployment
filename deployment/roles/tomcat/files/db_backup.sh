#!/usr/bin/bash

now=$(date)
echo $now
mysqldump -u app -ppassword dlo > ./dlo_db_backup_"$now".sql
rsync -avz -e "ssh -i /root/.ssh/dlotestjenkins.pem" ./dlo_db_backup_"$now".sql ubuntu@54.68.43.75:/home/ubuntu/dlotestboxdbbackup/