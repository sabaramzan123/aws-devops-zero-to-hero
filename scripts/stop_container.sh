#!/bin/bash
set -e

# Stop and remove any container running on port 5000
CONTAINER_ID=$(docker ps -q --filter "publish=5000")
if [ ! -z "$CONTAINER_ID" ]; then
    echo "Stopping container $CONTAINER_ID..."
    docker stop $CONTAINER_ID
    docker rm $CONTAINER_ID
fi
