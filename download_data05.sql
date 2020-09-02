#!/bin/bash
mkdir -p /home/user05/oozie_data
wget https://raw.githubusercontent.com/project303/dataset/master/employee.csv -P /home/user05/oozie_data
hdfs dfs -mkdir -p /user/user05/data/oozie_data
hdfs dfs -put /home/user05/oozie_data/employee.csv  /user/user05/data/oozie_data/employee.csv
