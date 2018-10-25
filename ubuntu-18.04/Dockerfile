FROM ubuntu:18.04

MAINTAINER Gregor von Laszewski <laszewski@gmail.com>

RUN apt-get update -y

#
# SYSTEM
#
RUN apt-get install -y build-essential libssl-dev
# libffi-dev

RUN apt-get install wget -y
RUN apt-get install curl -y
RUN apt-get install git-core -y
RUN apt-get install dnsutils -y

#
# PYTHON2
#
# RUN apt-get install python-pip -y --fix-missing
# RUN pip install --upgrade pip setuptools
#
# PYTHON3
#
RUN apt-get install -y python3.7
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.7 10
RUN update-alternatives --config python

RUN apt-get install -y python3.7-distutils
RUN apt-get install -y python3.7-dev


RUN curl -s https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py

RUN pip install -U pip setuptools
RUN pip install psutil


# RUN apt-get install -y python3-pip --fix-missing
#RUN pip3 install --upgrade pip setuptools

#RUN update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 10
#RUN update-alternatives --config pip
#RUN yes '' | update-alternatives --force --all


#
# PANDOC
#
RUN apt-get install graphviz -y
RUN apt-get install haskell-platform -y
# RUN apt-get install pandoc -y
RUN wget -q https://github.com/jgm/pandoc/releases/download/2.3.1/pandoc-2.3.1-linux.tar.gz
RUN tar xvzf pandoc-2.3.1-linux.tar.gz --strip-components 1 -C /usr

RUN apt-get install pandoc-citeproc -y


RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs


RUN pip install pandoc-fignos
RUN npm install -g pandoc-index

# go language
RUN apt-get install golang -y
RUN apt-get install git -y
ENV HOME /root
ENV GOPATH $HOME/go
ENV PATH ${PATH}:${GOPATH}/bin
RUN go get github.com/tcnksm/ghr

#RUN git clone https://github.com/cloudmesh-community/book.git

#RUN cd book
#RUN git pull
#RUN pip install -r requirements.txt
