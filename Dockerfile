FROM ubuntu:22.04
MAINTAINER Nanja Ravelonanosy
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
#ADD site/ /var/www/html/
RUN git clone https://github.com/ravelonanosy/docker_OK.git  /var/www/html/
EXPOSE 8081
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
