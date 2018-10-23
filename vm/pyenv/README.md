# Vagrant and pyenv

The following commands will install pyenv with pyton 2 and 3 in
vagrant

```bash
mkdir cloudmesh-community
cd cloudmesh-community
wget -q https://github.com/cloudmesh-community/images.git
cd images/vm/pyenv
make clean
make image
make deploy
```

Now you can login with

```bash
make shell
```

Execute the command to test it. Remember that `vagrant$` means this
command is executed in teh vagrant shell

```bash
vagrant$ ENV3
vagrant$ python --version
vagrant$ ENV2
vagrant$ python --version
``

