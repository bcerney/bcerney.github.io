docker create --name=bcerney.github.io \




docker build --rm -t bcerney.github.io:latest . 

sudo docker start bcerney.github.io-hexo && sudo docker exec -it bcerney.github.io-hexo bash

docker exec -it 8576fdf7d0ac bash

docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

docker run -it \
-e HEXO_SERVER_PORT=4000 \
-v /home/bgdg/repos/bcerney.github.io:/app \
-p 4000:4000 \
bcerney.github.io:latest \
bash



#!/usr/bin/env bash
if [ $# -eq 0 ]
  then
    tag='latest'
  else
    tag=$1
fi

docker build -t project:$tag .
