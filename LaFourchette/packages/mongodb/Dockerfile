############################################################
# Dockerfile to build MongoDB container images
# Based on debian:wheezy 
############################################################

# Set the base image to Ubuntu
FROM debian:wheezy

# Let the conatiner know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

MAINTAINER Sidney curron <scurron@lafourchette.com> 

# Update the repository sources list (positionned here for the cache)
RUN apt-get update

# Install MongoDB Following the Instructions at MongoDB Docs
# Add the package verification key
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

# Add MongoDB to the repository sources list
RUN echo 'deb http://downloads-distro.mongodb.org/repo/debian-sysvinit dist 10gen'  | tee /etc/apt/sources.list.d/mongodb.list

# Update the repository sources list once more
RUN apt-get update

# Install MongoDB package (.deb)
RUN apt-get install -y apt-utils adduser mongodb-org-server mongodb-org-shell

# Create the default data directory
RUN mkdir -p /data/db

# Expose the default port
EXPOSE 27017

# Default port to execute the entrypoint (MongoDB)
CMD ["--port 27017"]

# Set default container command
ENTRYPOINT /usr/bin/mongod
