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

RUN wget -q http://nginx.org/keys/nginx_signing.key -O- | sudo apt-key add -
RUN echo deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx >> /etc/apt/sources.list
RUN echo deb-src http://nginx.org/packages/mainline/ubuntu/ trusty nginx >> /etc/apt/sources.list

# tweak nginx config
#RUN sed -i -e"s/worker_processes  1/worker_processes 5/" /etc/nginx/nginx.conf 
#RUN sed -i -e"s/keepalive_timeout\s*65/keepalive_timeout 2/" /etc/nginx/nginx.conf
#RUN sed -i -e"s/keepalive_timeout 2/keepalive_timeout 2;\n\tclient_max_body_size 100m/" /etc/nginx/nginx.conf
#RUN sed -i "s/.*conf\.d\/\*\.conf;.*/&\n    include \/etc\/nginx\/sites-enabled\/\*;/" /etc/nginx/nginx.conf
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Working directory
WORKDIR /var/www

# nginx site conf
#RUN rm -Rf /etc/nginx/conf.d/*
#RUN mkdir -p /etc/nginx/sites-available/
#RUN mkdir -p /etc/nginx/sites-enabled/
#RUN mkdir -p /etc/nginx/ssl/
#ADD ./nginx-site.conf /etc/nginx/sites-available/default.conf
#RUN ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf
