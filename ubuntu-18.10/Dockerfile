FROM ubuntu:18.10

MAINTAINER Gregor von Laszewski <laszewski@gmail.com>

RUN apt-get update -y
RUN apt-get install -y apt-utils

#
# SYSTEM
#
RUN apt-get install -y build-essential libssl-dev
# libffi-dev

RUN apt-get install -y rsync
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y git-core
RUN apt-get install -y dnsutils

RUN apt install -y python3.7

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 10
RUN update-alternatives --config python

RUN apt-get install -y python3.7-distutils
RUN apt-get install -y python3.7-dev


RUN curl -s https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py 

RUN pip install -U pip setuptools
RUN pip install psutil