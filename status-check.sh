#!/bin/bash
# This script tests the status of the Application by sending a request to http://localhost:8081.
# It waits for 2 minutes before checking the status.
set -x
echo "Testing the status of the Application"
echo -n "..."
sleep 120

status=$(curl -s -o /dev/null -w "%{http_code}" "http://192.168.32.98:8084/")
# Check if the status code is 200 (indicating a successful response)
if [ "$status" == "200" ]; then
  echo "Application is up and running"
else
  echo "Application is not running"
fi
