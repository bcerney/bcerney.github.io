#!/bin/bash

docker run -t -d \
-e HEXO_SERVER_PORT=4000 \
-v /home/bgdgbc/repos/bcerney.github.io:/app \
-p 4000:4000 \
--name bcerney.github.io \
bcerney.github.io:latest \
bash

# docker exec bcerney.github.io mkdir /app/.ssh
# docker cp /home/bgdgbc/.ssh/id_rsa bcerney.github.io:/app/.ssh/id_rsa

# docker exec -it bcerney.github.io ./hexo_deploy.sh