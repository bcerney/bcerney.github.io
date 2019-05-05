FROM node:slim

# Set the server port as an environmental
ENV HEXO_SERVER_PORT=4000

# Install requirements
RUN \
 apt-get update && \
 apt-get install git -y && \
 npm install -g hexo-cli

RUN \
 git config --global user.name "bcerney" && \
 git config --global user.email "brianecerney@gmail.com"

# Set workdir
WORKDIR /app

# Expose Server Port
EXPOSE ${HEXO_SERVER_PORT}

# Build a base blog if it doesnt exist, then start server
CMD \
 echo "***** Initializing... *****" && \
 npm install && \
 npm install --save hexo-admin && \
 npm install hexo-deployer-git --save; \
 echo "***** Generating... *****" && \
 hexo generate && hexo server; \
 #echo "***** Deploying... *****" && \
 #hexo clean && hexo deploy
