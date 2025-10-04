#!/bin/bash

read -p "Enter the path to your LIDC dataset: " DATASET_PATH

# Check if the path exists
if [ ! -d "$DATASET_PATH" ]; then
    echo "Error: Directory does not exist!"
    exit 1
fi

# Run Docker Compose with the dataset mounted
docker-compose run -v "$DATASET_PATH":/src/data project
