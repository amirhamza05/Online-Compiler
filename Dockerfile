#Use the Ubuntu base image
  FROM ubuntu:16.04
  LABEL MAINTAINER Anam Ahmed
  # Install All the avengers
  RUN apt-get update && apt-get install -y nginx
  WORKDIR /var/www/html
  COPY . /var/www/html
  EXPOSE 80
  CMD ["nginx","-g","daemon off;"]
