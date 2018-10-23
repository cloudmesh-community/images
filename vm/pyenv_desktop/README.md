# Vagrant and pyenv on ubuntu desktop version (with GUI)

The following commands will install pyenv with pyton 2 and 3 in
vagrant

```bash
mkdir cloudmesh-community
cd cloudmesh-community
wget -q https://github.com/cloudmesh-community/images.git
cd images/vm/pyenv_desktop
make clean
make image
make deploy
```

Now you can login with 

```bash
make shell
```

or you can use virtualBox to login using the GUI. The password for
the default account that is created is `vagrant`

Execute the command to test it. Remember that `vagrant$` means this
command is executed in teh vagrant shell

```bash
vagrant$ ENV3
vagrant$ python --version
vagrant$ ENV2
vagrant$ python --version
``

