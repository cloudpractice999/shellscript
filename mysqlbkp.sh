#!/bin/bash
#this is a test
v_dbname=$1
v_username=$(cat cred |grep username |awk -F"=" '{print $2}')
v_password=$(cat cred |grep password |awk -F"=" '{print $2}')
v_dbhost=db_host.rds.asw.com

echo "mysqldump -h $v_dbhost -u $v_username -p $v_password $v_dbname > /db-backup/$v_dbname.sql"
