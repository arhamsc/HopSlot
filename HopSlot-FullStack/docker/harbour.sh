#!/bin/bash

# Initialize variables
FOLLOW=false
SERVICE=""

# Parse command line arguments
while getopts ":f" opt; do
  case $opt in
    f)
      FOLLOW=true
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# Shift the parsed options
shift $((OPTIND - 1))

# Check if service name is provided
if [ $# -eq 0 ]; then
  echo "Please provide a service name."
  exit 1
fi

# Set the service name
SERVICE="$1"

# Execute docker-compose logs with follow flag if specified
if [ "$FOLLOW" = true ]; then
  docker compose logs "$SERVICE" --follow 
else
  docker compose logs "$SERVICE"
fi