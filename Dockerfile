FROM esycat/ubuntu:latest

MAINTAINER "Eugene Janusov" <esycat@gmail.com>

ARG VERSION=6.x

RUN wget -qO- https://deb.nodesource.com/setup_${VERSION} | bash -

RUN apt-get update && \
    apt-get -yq --no-install-recommends install nodejs && \
    apt-get clean && \
    rm -rf /tmp/* /var/tmp/* /var/lib/apt/archive/* /var/lib/apt/lists/*
