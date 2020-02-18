FROM ubuntu:20.04
MAINTAINER docker@jacobbrunson.com

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    doxygen graphviz \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
