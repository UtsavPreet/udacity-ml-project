#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

docker build -t ml_microservice .
docker tag ml_microservice utsavpreet27/ml_microservice
docker image ls
docker run -p 80:80 ml_microservice
