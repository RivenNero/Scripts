#!/bin/bash

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

cd ${SHELL_FOLDER}

sudo docker compose pull

./down.sh

./up.sh

sudo docker image prune -f
