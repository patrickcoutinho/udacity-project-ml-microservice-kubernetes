#!/usr/bin/env bash

image=ml-microservice-k8s-app
dockerpath=patrickcoutinho/$image

kubectl run ml-microservice-k8s-app --image=$dockerpath --port=80 

kubectl get pods
sleep 40
kubectl get pods

kubectl port-forward $image 8000:80
