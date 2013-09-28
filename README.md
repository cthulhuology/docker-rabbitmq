docker-rabbitmq
===============

A docker.io recipe for running rabbitmq 3.1.5 


Getting Started
---------------

To build from scratch you can use:

	sudo docker build -t rabbitmq github.com/cthulhuology/docker-rabbitmq

	sudo docker run -d -t rabbitmq



Or you can just use docker to get the latest prebuild container:

	sudo docker pull cthulhuology/rabbitmq

	sudo docker run -i -d -t cthulhuology/rabbitmq


If you want to expose the ports as if production

	sudo docker run -p 5672:5672 -p 15672:15672 -p 4369:4369 -p 9100:9100 -p 9101:9101 -p 9102:9102 -p 9103:9103 -p 9104:9104 -p 9105:9105 -i -d -e CONTAINER_SERVER=$(HOSTNAME) -t cthulhuology/rabbitmq


