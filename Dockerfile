#Use the Ubuntu base image
FROM ubuntu:20.04

#Update all packages
RUN apt-get update


#Install C/C++ Compiler
RUN apt install build-essential
RUN apt-get install manpages-dev

#Install Java Compiler
RUN apt install default-jre

#Install applications
RUN apt-get -y install apache2
RUN apt-get -y install php libapache2-mod-php

#Remove any unnecessary files
RUN apt-get clean

#Setup Apache2 servers                                               
#Debian configuration requires the environment variables APACHE_RUN_USER, APACHE_RUN_GROUP, and APACHE_PID_FILE to be set
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_PID_FILE /var/run/apache2.pid

#Expose ports
EXPOSE 80

#Start services
CMD /usr/sbin/apache2ctl -D FOREGROUND

#Copy files to webserver 
COPY Online-Compiler /var/www/html/

#Change Permission
RUN chmod -R 777 /var/www/html/

# Remove Default index.html
RUN rm /var/www/html/index.html
