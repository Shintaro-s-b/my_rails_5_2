#!/bin/bash

CONTAINER_ID=$(docker ps -a -f name=postgres --format "{{.ID}}")
docker exec -it ${CONTAINER_ID} psql -U rails
