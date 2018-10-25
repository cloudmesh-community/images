FROM python:3.7

MAINTAINER Gregor von Laszewski <laszewski@gmail.com>

RUN apt-get update -y
RUN apt-get install -y apt-utils

# Make sure we have up to date pip and setuptools

RUN pip install -U pip setuptools
RUN pip install psutil

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

#
# JUST FOR DEBUGGING
#
# RUN git clone https://github.com/cloudmesh-community/book.git
# RUN cd book; pip install -r requirements.txt

#
# GRAPHVIZ
#
RUN apt-get install graphviz -y --fix-missing

#
# NODEJS
#
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
#
# PANDOC
#
RUN apt-get install haskell-platform -y
RUN wget -q https://github.com/jgm/pandoc/releases/download/2.3.1/pandoc-2.3.1-1-amd64.deb
RUN dpkg -i pandoc-2.3.1-1-amd64.deb

RUN pip install pandoc-fignos
RUN npm install -g pandoc-index

RUN wget -q https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz
RUN tar -xvf go1.10.3.linux-amd64.tar.gz
RUN mv go /usr/local
ENV GOROOT /usr/local/go
ENV GOPATH $HOME/go
ENV PATH ${PATH}:${GOPATH}/bin:${GOROOT}/bin