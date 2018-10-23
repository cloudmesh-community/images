# put your script here, ENV2 and ENV3 must be avialable, and bashrc
# must be updated. avoid updating bashrc twice, a student did this
# yesterday, so if pyenv is already in there you can not cincatenate


wget -q https://raw.githubusercontent.com/cloudmesh-community/images/master/pyenv/bash_rc_add.sh
curl -q -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

#
# this has a bug and shoudl not be executed more than once
#
echo 'export PYENV_ROOT=$HOME/.pyenv' >> ~/.bashrc
echo 'export PATH=$PYENV_ROOT/bin:$PATH' >> ~/.bashrc
cat bash_rc_add.sh >>  ~/.bashrc

source ~/.bashrc

pyenv update


pyenv install 3.7.1
pyenv install 2.7.15
pyenv virtualenv 2.7.15 ENV2
pyenv virtualenv 3.7.1 ENV3

echo "ENV3" >> ~/.bashrc

source ~/.bashrc
ENV3
