FROM node:17

ENV HEXO_SERVER_PORT=4000

RUN \
 apt-get update && \
 apt-get install git vim build-essential -y

RUN \
 git config --global user.name "bcerney" && \
 git config --global user.email "brianecerney@gmail.com"

WORKDIR /app

EXPOSE ${HEXO_SERVER_PORT}

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .

CMD ["/bin/bash"]
