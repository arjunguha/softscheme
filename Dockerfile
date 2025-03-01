FROM ubuntu:20.04
MAINTAINER Arjun Guha <a.guha@northeastern.edu>
RUN dpkg --add-architecture i386
RUN apt-get update -q
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -yq nodejs npm libc6:i386
COPY . /softscheme
WORKDIR /softscheme/js
RUN npm install
EXPOSE 8080
WORKDIR /softscheme
CMD node js
