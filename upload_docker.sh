#!/usr/bin/env bash
# Added optional parameter to specify username
username=${1:-lividsquid}
echo Using Docker Hub user $username
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=${username}/project-4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u ${username}
docker image tag project-4:latest ${dockerpath}:latest

# Step 3:
# Push image to a docker repository
docker push ${dockerpath}:latest
