FROM node:slim

# Set the server port as an environmental
ENV HEXO_SERVER_PORT=4000

# Install requirements
RUN \
 apt-get update && \
 apt-get install git -y && \
 apt-get install vim -y && \
 npm install -g hexo-cli

RUN \
 git config --global user.name "bcerney" && \
 git config --global user.email "brianecerney@gmail.com"

# Set workdir
WORKDIR /app

# Expose Server Port
EXPOSE ${HEXO_SERVER_PORT}

RUN \
 echo "***** Initializing... *****" && \
 npm install && \
 npm install --save hexo-admin && \
 npm i --save hexo-asset-link && \
 npm install --save hexo-image-caption && \
 npm install hexo-deployer-git --save;

CMD ["/bin/bash"]
