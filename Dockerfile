FROM ubuntu:20.04
MAINTAINER docker@jacobbrunson.com
ENV PLANTUML_JAR_PATH=/usr/share/plantuml/plantuml.jar
RUN mkdir /data
RUN mkdir /output
RUN apt-get update && apt upgrade -y \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    doxygen graphviz plantuml \
 && rm -rf /var/lib/apt/lists/*
ENV PLANTUML_INSTALL_PATH=/usr/share/plantuml
WORKDIR /data
VOLUME ["/data", "/output"]
