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
# RUN apt-get install pandoc -y
RUN wget -q https://github.com/jgm/pandoc/releases/download/2.3.1/pandoc-2.3.1-linux.tar.gz
RUN tar xvzf pandoc-2.3.1-linux.tar.gz --strip-components 1 -C /usr
RUN curl -sSL https://get.haskellstack.org/ | sh
#RUN stack init



#
# PANDOC-CITEPROC
#
# RUN apt-get install pandoc-citeproc -y
RUN git clone https://github.com/jgm/pandoc-citeproc.git
RUN cd pandoc-citeproc
RUN stack setup
ENV PATH "$PATH:~/.local/bin"
RUN stack install




RUN pip install pandoc-fignos
RUN npm install -g pandoc-index


#RUN git clone https://github.com/cloudmesh-community/book.git
#RUN cd book; pip install -r requirements.txt
