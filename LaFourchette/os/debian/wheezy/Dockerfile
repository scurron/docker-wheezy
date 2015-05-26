FROM debian:wheezy

MAINTAINER Sidney curron <scurron@lafourchette.com>

ENV DEBIAN_FRONTEND noninteractive

echo "deb http://packages.dotdeb.org wheezy all" | tee -a /etc/apt/sources.list.d/dotdeb.list

# RUN sudo apt-get upgrade #toban

RUN sudo apt-get setuptools pwgen python-setuptools curl git unzip vim


RUN apt-get update
RUN apt-get install -y --force-yes software-properties-common

# Utils

# Working directory
WORKDIR /var/www
