#!/bin/bash
mkdir -p /tmp/user02
wget https://raw.githubusercontent.com/project303/dataset/master/employee.csv -O /tmp/user02/employee.csv
wget https://raw.githubusercontent.com/project303/dataset/master/create_table-user02.hql -O /tmp/user02/create_table-user02.hql
if [ -f /tmp/user02/employee.csv ]; then
    hdfs dfs -mkdir -p /user/user02/data/oozie_data
    hdfs dfs -put /tmp/user02/employee.csv  /user/user02/data/oozie_data/employee.csv
    rm /tmp/user02/employee.csv
else
    hdfs dfs -mkdir -p script/file-ga-ada
fi
