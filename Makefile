build:
	docker build --tag main .

run:
	docker run --detach --publish 8080:8080 main

