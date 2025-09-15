#!/bin/bash

while true
do
    # Get CPU idle percentage from top and subtract from 100
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | \
                awk '{print 100 - $8 "%"}')

    # Print timestamp + CPU usage
    #echo "$(date +"%Y-%m-%d %H:%M:%S") | CPU Usage: $CPU_USAGE"

    echo "CPU usage: $CPU_USAGE"

    #echo ""
    #echo "Top 5 CPU-consuming processes:"
    #ps -eo pid,comm,%cpu --sort=%cpu | head -n 6

    echo "Healthcheck run at: $(date)"

    # Refresh every 1 second
    sleep 1
done
