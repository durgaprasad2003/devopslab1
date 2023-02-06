#!/bin/bash

# Get the total memory in MB
total_memory=$(free -m | awk '/^Mem:/ {print $2}')

# Check if the total memory is less than 1024 MB
if [ "$total_memory" -lt 1024 ]; then
  echo "Minimum of 1GB RAM is required."
  exit 1
else
  echo "Memory check passed."
  exit 0
fi
