FROM debian:stable
VOLUME /local

ADD run.sh /run.sh

ENV SHARE-SERVER="192.168.1.1"
ENV SHARE-NAME="share"
ENV SHARE-USER="user"
ENV SHARE-PASS="password"

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y rsync
RUN apt-get install -y cifs-utils

cmd /run.sh
