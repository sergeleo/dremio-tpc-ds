#!/bin/bash

# Authenticate and extract the token
TOKEN=$(curl -X POST  http://<host>:<port>/apiv2/login -H 'Content-Type: application/json'   -d '{"userName": "dremio", "password": "dremio"}'| jq -r '.token' )

# Iterate through datasets
for i in `cat DatasetHeaders/tables_list.txt`
do

   DATAOUTPUT=$(curl -X PUT  http://<host>:<port>/apiv2/source/benchmarking/folder_format/benchmarking/tpcds_sf10000/csv/$i -H 'Authorization: _dremio'"$TOKEN"''  -H 'Content-Type: application/json'  -d '{"type": "Text", "fieldDelimiter": "|", "skipFirstLine": false, "extractHeader": true, "quote": "\"", "comment": "#", "escape": "\"", "lineDelimiter": "\n", "autoGenerateColumnNames": true, "trimHeader": true}');

   echo $DATAOUTPUT;
done
