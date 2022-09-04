#!/bin/sh
#Checking whether username is passed to script
#A docker folder will be created inside this users home directory and container persistant data will be stored there
dockerUser=$1;
[ -z "$dockerUser" ] && echo "###Please pass username...!!!">>deployQbittorrent.log && exit 0 || echo "Will be deploying container for user $dockerUser">>deployQbittorrent.log;
#installing docker-compose
apt install docker-compose -y;
#Deploying docker compose
echo "Deploying Qbittorrent...">>deployQbittorrent.log;
DOCKER_USER=$dockerUser docker-compose down
DOCKER_USER=$dockerUser docker-compose up -d
echo "Qbittorrent deployment successfull...">>deployQbittorrent.log;
exit 0