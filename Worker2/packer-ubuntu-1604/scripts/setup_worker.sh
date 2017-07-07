#!/bin/bash -eux

sudo apt-get install curl

curl -sSL https://get.docker.com/ | sh

usermod -aG docker ubuntu

sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)"

sudo chmod +x /usr/local/bin/docker-compose

#set tocken and ip of manager
docker swarm join --token SWMTKN-1-37v2vqo82mgtgo0roy7gtffo5lo92f5yf68f9vduvxgm516t3u-cpjwhzxnbtc3vwtidwc5vsy4w 10.23.22.40:2377

sudo apt-get install git-all

git init

git config user.email "maria_suvalova@mail.ru"

git config user.name "Mary Suvalova"

git pull https://user:riama2210@github.com/MARS22101996/Packer.git master

cd ./services

sudo docker-compose build

cd ../
