FROM node:latest

RUN set -ex ; \
    apt-get update ; \
    apt-get install -yqq git

ADD https://api.github.com/repos/docker/docker/compare/master...HEAD /dev/null

RUN git clone https://github.com/GambleCoin-Project/gamblecore-node.git /gamblecore-node

WORKDIR /gamblecore-node

RUN npm install

RUN ./bin/gamblecore-node create /gamblecore

VOLUME /gamblecore/data