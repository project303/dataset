#!/bin/bash
mkdir -p /tmp/user03
wget https://raw.githubusercontent.com/project303/dataset/master/employee.csv -O /tmp/user03/employee.csv
wget https://raw.githubusercontent.com/project303/dataset/master/load_table03.hql -O /tmp/user03/create_table-user03.hql
if [ -f /tmp/user03/employee.csv ]; then
    hdfs dfs -mkdir -p /user/user03/data/oozie_data
    hdfs dfs -put /tmp/user03/employee.csv  /user/user03/data/oozie_data/employee.csv
    rm /tmp/user03/employee.csv
else
    hdfs dfs -mkdir -p script/file-ga-ada
fi
