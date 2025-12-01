#!/bin/bash

# wait for services to initialize
sleep 5
echo Starting compreface-admin
supervisorctl start compreface-admin

# wait until compreface-admin make all migrations
sleep 5
echo Starting compreface-api
supervisorctl start compreface-api

# compreface-fe (nginx) already started via autostart=true
echo "All services started"