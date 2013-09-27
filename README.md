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

  sudo docker run -p 5672:5672 -p 15672:15672 -i -d -t cthulhuology/rabbitmq


