FROM gcr.io/spotify-base-images/bionic-java11:2020.04-1@sha256:dda4a48fb54a81a0096830b7fbbc070a43151f196d27f41c6f0bf7569f230a01
MAINTAINER Warpspeed <warpspeed@spotify.com>
RUN apt-get update \
    && apt-get install -y make gcc
ADD . /fibtest/
RUN cd /fibtest && make
