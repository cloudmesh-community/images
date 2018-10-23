image:
	vagrant init ubuntu/bionic64
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
