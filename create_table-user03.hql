USE user03;

DROP TABLE IF EXISTS oozie_data;

CREATE EXTERNAL TABLE IF NOT EXISTS oozie_data (
    name string,
    work_place ARRAY<string>,
    sex_age STRUCT<sex:string,age:int>,
    skills_score MAP<string,int>,
    depart_title MAP<STRING,ARRAY<STRING>>
)
COMMENT 'This is an external table created by Oozie table'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '|'
COLLECTION ITEMS TERMINATED BY ','
MAP KEYS TERMINATED BY ':'
STORED AS TEXTFILE
LOCATION '/user/user03/data/oozie_data';
