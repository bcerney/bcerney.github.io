#!/bin/bash

docker build --rm -t bcerney.github.io:latest .

docker run -it \
  -e HEXO_SERVER_PORT=4000 \
  -p 4000:4000 \
  bcerney.github.io:latest
