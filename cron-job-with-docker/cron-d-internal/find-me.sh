#!/bin/bash

# Get time stamp
TIMESTAMP=$(date +'%F_%H-%M-%S')

echo "---------------------------------------------------------"
echo "RUNNING THE SCRIPT FIND-ME @ $TIMESTAMP"

# Log env vars
echo "Environment Variables:" >> /var/log/cron.log
printenv >> /var/log/cron.log

# Log the env var
echo " The .env var is: APP_SUPER_SECRET=$APP_SUPER_SECRET" >> /var/log/cron.log