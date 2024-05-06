#!/bin/bash

# Initialize variables
FOLLOW=false
SERVICE=""

startMongo() {
  docker compose up -d mongo-db-primary mongo-db-secondary-1 mongo-db-secondary-2

  sleep 2

  docker exec mongo-db-primary mongosh hopslot-mongo-db --file /init-files/mongo-init-2.js
}

# Parse command line arguments
while getopts ":fwm" opt; do
  case $opt in
    f)
      FOLLOW=true
      ;;
    w)
      WIN=true
      # Handle values as regular expressions
            args=("$@")
            C_LIST=()
            for (( i=$OPTIND-1 ; i <= $#-1 ; i++ ))
            do
                C_LIST=("${C_LIST[@]}" ${args[$i]})
            done
            ;;
    m)
      startMongo
      exit 1
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
elif [ "$WIN" = true ]; then
  docker compose -f docker-compose.yaml -f docker-compose.win.override.yaml "${C_LIST[@]}"
else
  docker compose logs "$SERVICE"
fi