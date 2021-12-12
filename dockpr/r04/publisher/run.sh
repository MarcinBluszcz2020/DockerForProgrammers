#!/bin/sh

export SERVICE=publisher
docker rm $SERVICE
./build.sh
echo "*************** Uruchamianie nadawcy"
docker run \
  --name $SERVICE \
  -d \
  --restart always \
  -e TITLE=$SERVICE \
  -p 3000:3000 \
  --network chapter4 \
  dockerfordevelopers/$SERVICE
