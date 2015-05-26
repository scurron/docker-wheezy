############################################################
# Dockerfile to build nginx container images
# Based on Debian:wheezy
############################################################

# Set the base image to Ubuntu
FROM debian:wheezy

# File Author / Maintainer
MAINTAINER Sidney curron <scurron@lafourchette.com>

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# Update the repository sources list (positionned here for the cache)
RUN apt-get update

RUN echo "deb http://packages.dotdeb.org wheezy all" | tee -a /etc/apt/sources.list.d/dotdeb.list

RUN apt-get update
RUN apt-get install -y --force-yes software-properties-common

# Utils
RUN sudo apt-get setuptools pwgen python-setuptools curl git unzip vim

# Working directory
WORKDIR /var/www
