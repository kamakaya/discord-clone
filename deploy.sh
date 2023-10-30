#!/bin/bash

# Ensure the .env file exists
if [ ! -f .env ]; then
  echo ".env file not found!"
  exit 1
fi

# Read .env file and format as KEY1=VALUE1,KEY2=VALUE2,...
ENV_VARS=$(awk -F= 'NF==2 {printf "%s=%s,", $1,$2}' .env | sed 's/,$//')

# Deploy to Cloud Run
gcloud run deploy discord-clone \
  --image gcr.io/discord-clone-2023/discord-clone \
  --platform managed \
  --update-env-vars $ENV_VARS
