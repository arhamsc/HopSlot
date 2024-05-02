#!/bin/bash
TARGET_DIR=$(pwd)

### Use this script to run the package.json scripts with the environment variables from the provided env file.
### Mainly used to run commands in dev environment and outside of docker container bound by a bind mount to api folder.

### Example: ./api.sh -l .env.local prisma:generate:db_clients

# Parse command line arguments
while getopts "l:" flag; do
  case $flag in
    l)
      env_file="$OPTARG"
      ;;
    *)
      echo "Invalid flag: $flag"
      exit 1
      ;;
  esac
done

# Check if the env file is provided
if [ -z "$env_file" ]; then
  echo "Please provide an env file using the -l flag."
  exit 1
fi

# Check if the env file exists
if [ ! -f "$env_file" ]; then
  echo "Env file not found: $env_file"
  exit 1
fi

shift 2

# Run the package.json command with the env file
bun --env-file=$env_file run $1