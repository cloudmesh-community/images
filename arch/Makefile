image:
	docker build -t cloudmesh/book:1.0 . 

shell:
	docker run --rm -it cloudmesh/book:1.0  /bin/bash 

clean:
	-docker kill $$(docker ps -q)
	-docker rm $$(docker ps -a -q)
	-docker rmi $$(docker images -q)

push:
	docker push cloudmesh/book:1.0

run:
	docker run cloudmesh/book:1.0 /bin/sh -c "cd technologies; git pull; make"
