#!/bin/bash
mkdir -p /tmp/user04
wget https://raw.githubusercontent.com/project303/dataset/master/employee.csv -O /tmp/user04/employee.csv
wget https://raw.githubusercontent.com/project303/dataset/master/create_table-user04.hql -O /tmp/user04/create_table-user04.hql
if [ -f /tmp/user04/employee.csv ]; then
    hdfs dfs -mkdir -p /user/user04/data/oozie_data
    hdfs dfs -put /tmp/user04/employee.csv  /user/user04/data/oozie_data/employee.csv
    rm /tmp/user04/employee.csv
else
    hdfs dfs -mkdir -p script/file-ga-ada
fi
