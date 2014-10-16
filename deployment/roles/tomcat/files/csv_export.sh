#!/bin/bash

time_stamp="/var/lib/tomcat7/webapps/csvfiles/"$(date +%Y-%m-%d-%T)
mkdir $time_stamp
echo "Creating directory $time_stamp"
for entry in /tmp/*.sql
do
  name="${entry##*/}"
  name="${name%%.*}"
echo $name
 mysql -uapp -ppassword dlo < $entry | sed "s/'/\'/;s/\t/\",\"/g;s/^/\"/;s/$/\"/;s/\n//g"  > "$time_stamp"/"$name".csv
done