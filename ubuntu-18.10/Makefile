image:
	docker build -t cloudmesh/ubuntu:18.10 . 

shell:
	docker run --rm -it cloudmesh/ubuntu:18.10  /bin/bash 

clean:
	-docker kill $$(docker ps -q)
	-docker rm $$(docker ps -a -q)
	-docker rmi $$(docker images -q)

push:
	docker push cloudmesh/ubuntu:18.10

run:
	docker run cloudmesh/ubuntu:18.10 /bin/sh -c "cd technologies; git pull; make"
