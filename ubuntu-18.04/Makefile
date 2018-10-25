VERSION=18.04

image:
	docker build -t cloudmesh/ubuntu:$(VERSION) . 

shell:
	docker run --rm -it cloudmesh/ubuntu:$(VERSION)  /bin/bash 

clean:
	-docker kill $$(docker ps -q)
	-docker rm $$(docker ps -a -q)
	-docker rmi $$(docker images -q)

push:
	docker push cloudmesh/ubuntu:$(VERSION)

run:
	docker run cloudmesh/ubuntu:$(VERSION) /bin/sh -c "cd technologies; git pull; make"
