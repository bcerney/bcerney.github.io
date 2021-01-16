docker build --rm -t bcerney.github.io:latest . 

sudo docker start bcerney.github.io-hexo && sudo docker exec -it bcerney.github.io-hexo bash

docker exec -it 8576fdf7d0ac bash

docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

sudo docker run -it \
-e HEXO_SERVER_PORT=4000 \
-v /home/bgdgbc/repos/bcerney.github.io:/app \
-p 4000:4000 \
bcerney.github.io:latest



#!/usr/bin/env bash
if [ $# -eq 0 ]
  then
    tag='latest'
  else
    tag=$1
fi

docker build -t project:$tag .

ssh-keygen -t rsa -f /root/.ssh/id_rsa -q -P ""
cat /root/.ssh/id_rsa.pub

# Specify private key for remote git commands

GIT_SSH_COMMAND='ssh -i /home/bgdgbc/.ssh/id_rsa'
