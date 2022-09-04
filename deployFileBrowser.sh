#!/bin/sh
#Deploying docker compose
echo "Deploying File Browser...">>deployFileBrowser.log;
docker-compose down
DOCKER_USER=$1 docker-compose up -d
echo "File Browser deployment successfull...">>deployFileBrowser.log;
exit 0