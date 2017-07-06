#!/bin/bash -eux

sudo apt-get install curl

curl -sSL https://get.docker.com/ | sh

usermod -aG docker ubuntu

sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)"

sudo chmod +x /usr/local/bin/docker-compose

echo $(hostname -I) | sed 's/ .*//'

sudo apt-get install git-all

git init

git config user.email "maria_suvalova@mail.ru"

git config user.name "Mary Suvalova"

git pull https://user:riama2210@github.com/MARS22101996/Packer.git master
