#!/bin/bash

# Export environment variables to /etc/environment
printenv | grep -v "no_proxy" > /etc/environment

# Start cron in the foreground
cron -f
