#!/bin/bash

# Build and publish script for Pritunl-Fake-API
IMAGE_NAME="registry.k8s.sindrema.com/images/pritunl-fake-api"
TAG="latest"

echo "Building Docker image..."
docker build -f docker/api-only/Dockerfile -t $IMAGE_NAME:$TAG .

echo "Pushing to registry..."
docker push $IMAGE_NAME:$TAG

echo "Done! Image: $IMAGE_NAME:$TAG"
