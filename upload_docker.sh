#!/usr/bin/env bash

image=ml-microservice-k8s-app
dockerpath=patrickcoutinho/$image

echo $DOCKER_HUB_PASS | docker login -u=patrickcoutinho --password-stdin
docker image tag $image:latest $dockerpath:latest

docker push $dockerpath:latest