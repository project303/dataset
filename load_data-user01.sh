#!/bin/bash
mkdir -p /tmp/user01
wget https://raw.githubusercontent.com/project303/dataset/master/employee.csv -O /tmp/user01/employee.csv
wget https://raw.githubusercontent.com/project303/dataset/master/load_table05.hql -O /tmp/user01/create_table-user01.hql
if [ -f /tmp/user01/employee.csv ]; then
    hdfs dfs -mkdir -p /user/user01/data/oozie_data
    hdfs dfs -put /tmp/user01/employee.csv  /user/user01/data/oozie_data/employee.csv
    rm /tmp/user01/employee.csv
else
    hdfs dfs -mkdir -p script/file-ga-ada
fi
