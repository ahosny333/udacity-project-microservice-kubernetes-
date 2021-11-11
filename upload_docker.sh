#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
TAG=udacity-boston-housing
DOCKERUSER=ahmedhosny333
DOCKERPATH=$DOCKERUSER/$TAG


# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $DOCKERPATH"
docker login --username=$DOCKERUSER
docker tag $TAG $DOCKERPATH

# Step 3:
# Push image to a docker repository
docker push $DOCKERPATH
