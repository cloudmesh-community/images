FROM ubuntu:18.04

#
# SYSTEM
#

RUN apt-get update -y
RUN apt-get install -y apt-utils
RUN apt-get install -y build-essential libssl-dev
RUN apt-get install -y rsync
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y git-core
RUN apt-get install -y dnsutils
RUN apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev
RUN apt-get install -y libreadline-dev libsqlite3-dev llvm libncurses5-dev

#
# PYENV
#

RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv
RUN git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv   

WORKDIR /root

ENV HOME /root
ENV PYENV_ROOT=$HOME/.pyenv
ENV PATH=$PYENV_ROOT/bin:$PATH

RUN env

RUN wget -q https://raw.githubusercontent.com/cloudmesh-community/images/master/pyenv/bash_rc_add.sh

RUN echo 'export PYENV_ROOT=$HOME/.pyenv' >> ~/.bashrc
RUN echo 'export PATH=$PYENV_ROOT/bin:$PATH' >> ~/.bashrc
RUN cat bash_rc_add.sh >>  ~/.bashrc

CMD source ~/.bashrc
WORKDIR /root


RUN echo $PATH

RUN pyenv install 3.7.1
RUN pyenv install 2.7.15
RUN pyenv virtualenv 2.7.15 ENV2
RUN pyenv virtualenv 3.7.1 ENV3



#
# Activate Python3
#
RUN echo "ENV3" >> ~/.bashrc

CMD source ~/.bashrc
CMD ENV3
