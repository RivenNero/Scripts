#!/bin/bash

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

cd ${SHELL_FOLDER}

./down.sh

sudo docker compose pull

./up.sh
