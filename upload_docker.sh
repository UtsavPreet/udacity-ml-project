#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=utsavpreet27/ml_microservice

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u utsavpreet27 -p ""
docker tag ml_microservice utsavpreet27/ml_microservice
# Step 3:
# Push image to a docker repository

docker push $dockerpath
