#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=utsavpreet27/ml_microservice

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment --image=utsavpreet27/ml_microservice ml-microservice

# Step 3:
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment ml-microservice --port=80 --name=ml-microservice-http
sudo kubectl port-forward service/ml-microservice-http 80:80