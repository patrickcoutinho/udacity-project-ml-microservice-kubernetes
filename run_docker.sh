#!/usr/bin/env bash

docker build -t ml-microservice-k8s-app .
docker images
docker run -it --rm -p 8000:80 --name ml-microservice-k8s-app ml-microservice-k8s-app
