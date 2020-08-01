#!/bin/bash

# sudo docker run -t -d \
# -e HEXO_SERVER_PORT=4000 \
# -v /home/bgdgbc/repos/bcerney.github.io:/app \
# -p 4000:4000 \
# --name bcerney.github.io \
# bcerney.github.io:latest \
# bash

sudo docker run -it \
-e HEXO_SERVER_PORT=4000 \
-v /home/bgdgbc/repos/bcerney.github.io:/app \
-p 4000:4000 \
bcerney.github.io:latest

sudo docker exec -it bcerney.github.io ./hexo_server.sh