image:
	vagrant init peru/ubuntu-18.10-desktop-amd64 \
        --box-version 20181019.01
	vagrant up

deploy:
	cat install.sh | vagrant ssh -c 'cat - > ~/install.sh'
	vagrant ssh -c 'sh ~/install.sh'

shell:
	vagrant ssh

ssh: shell

clean:
	vagrant destroy
	rm Vagrantfile
