#Use the Ubuntu base image
FROM ubuntu:20.04

#Update all packages
RUN apt-get update


#Install C/C++ Compiler
RUN apt install build-essential
RUN apt-get install manpages-dev

#Install Java Compiler
RUN apt install default-jre
