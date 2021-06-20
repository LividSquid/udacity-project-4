#!/usr/bin/env bash

# Added optional parameter to specify username
username=${1:-lividsquid}
echo Using Docker Hub user $username

# Step 1:
# This is your Docker ID/path
dockerpath=${username}/project-4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment project-4 --image=${dockerpath}:latest --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 3.5:
# Wait for pod to have a status of "Running"
count=0
while [ $count -le 12 ]; do
    if [ $(kubectl get pods | grep -q "Running"; echo $?) -eq 0 ]; then break; fi
    if [ $count -eq 12 ]; then echo "Pod not running after 60 seconds. Exiting."; exit 1; fi
    printf "Pod is not running yet. Waiting 5 seconds"
    tick=0
    while [ $tick -lt 5 ]; do sleep 1; printf "."; tick=$((tick+1)); done
    printf "\n"
    count=$((count+1))
done
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/project-4 8000:80 &

kubectl logs -f deployment/project-4
