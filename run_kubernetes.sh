#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="ifelight/ml-kub-project:1.0.1"
echo "Docker ID and Image: $dockerpath"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-kub-project\
    --image=$dockerpath\
    --port=80 --labels app=ml-kub-project


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-kub-project 8000:80 --log-file=sample.txt
# kubectl port-forward ml-kub-project 8000:80 --log-dir="" --logtostderr=false --alsologtostderr=false --log-file-max-size=0
# Attach pod logs to terminal
kubectl logs pods/ml-kub-project
