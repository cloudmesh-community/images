image:
	docker build -t cloudmesh/pyenv:1.0 . 

shell:
	docker run --rm -it cloudmesh/pyenv:1.0  /bin/bash 

clean:
	-docker kill $$(docker ps -q)
	-docker rm $$(docker ps -a -q)
	-docker rmi $$(docker images -q)

push:
	docker push cloudmesh/pyenv:1.0

run:
	docker run cloudmesh/pyenv:1.0 /bin/sh -c "which pyenv"
