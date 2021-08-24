#Use the Ubuntu base image
FROM ubuntu:20.04

#Update all packages
RUN apt-get update

#Install Java Compiler
RUN apt-get install python2
