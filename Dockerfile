FROM debian:stable
VOLUME /local

ADD run.sh /run.sh
RUN chmod +x /run.sh

ENV SHARE_SERVER="192.168.1.1"
ENV SHARE_NAME="share"
ENV SHARE_USER="user"
ENV SHARE_PASS="password"

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y rsync
RUN apt-get install -y cifs-utils

RUN mkdir /mnt/remote

CMD /run.sh
