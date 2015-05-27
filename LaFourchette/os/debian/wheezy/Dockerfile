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

# Dotdeb GPG key
RUN gpg --keyserver keys.gnupg.net --recv-key 89DF5277
RUN gpg -a --export 89DF5277 | apt-key add -
RUN gpg --keyserver keyserver.ubuntu.com --recv-key ABF5BD827BD9BF62
RUN gpg -a --export ABF5BD827BD9BF62 | apt-key add -

# Update the repository sources list (positionned here for the cache)
RUN apt-get update

RUN echo "deb http://packages.dotdeb.org wheezy all" | tee -a /etc/apt/sources.list.d/dotdeb.list

RUN apt-get update
RUN apt-get install -y --force-yes software-properties-common

# Utils
RUN apt-get install -y --force-yes apt-utils pwgen python-setuptools curl git unzip vim wget

# Working directory
WORKDIR /var/www
