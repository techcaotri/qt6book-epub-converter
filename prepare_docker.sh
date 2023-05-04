#!/bin/bash -x

docker-compose down
BUILDKIT_PROGRESS=plain docker-compose up --build --force-recreate --remove-orphans -d