#!/bin/bash
set -x
echo "Testing the status of the Application"
echo -n "..."
sleep 120

status=(curl -s -o /dev/null -w "%{http_code}"  "http://localhost:8081")
if [ $status == 200 ];
then
  echo "Application is up and running"
else
  echo "Application is not running"
fi
