# put your script here, ENV2 and ENV3 must be avialable, and bashrc
# must be updated. avoid updating bashrc twice, a student did this
# yesterday, so if pyenv is already in there you can not cincatenate


RUN wget -q https://raw.githubusercontent.com/cloudmesh-community/images/master/pyenv/bash_rc_add.sh
curl -q -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

#
# this has a bug and shoudl not be executed more than once
#
echo 'export PYENV_ROOT=$HOME/.pyenv' >> ~/.bashrc
echo 'export PATH=$PYENV_ROOT/bin:$PATH' >> ~/.bashrc
cat bash_rc_add.sh >>  ~/.bashrc

pyenv update
