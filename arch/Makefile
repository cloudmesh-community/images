VERSION=1.1

image:
	docker build -t cloudmesh/book:$(VERSION) . 

shell:
	docker run --rm -it cloudmesh/book:$(VERSION)  /bin/bash 

clean:
	-docker kill $$(docker ps -q)
	-docker rm $$(docker ps -a -q)
	-docker rmi $$(docker images -q)

push:
	docker push cloudmesh/book:$(VERSION)

run:
	docker run cloudmesh/book:$(VERSION) /bin/sh -c "cd technologies; git pull; make"
