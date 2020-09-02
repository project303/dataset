#!/bin/bash
mkdir -p /tmp/user05
wget https://raw.githubusercontent.com/project303/dataset/master/employee.csv -O /tmp/user05/employee.csv
wget https://raw.githubusercontent.com/project303/dataset/master/load_table04.hql -O /tmp/user05/create_table-user05.hql
if [ -f /tmp/user05/employee.csv ]; then
    hdfs dfs -mkdir -p /user/user05/data/oozie_data
    hdfs dfs -put /tmp/user05/employee.csv  /user/user05/data/oozie_data/employee.csv
    rm /tmp/user05/employee.csv
else
    hdfs dfs -mkdir -p script/file-ga-ada
fi
