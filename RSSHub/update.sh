#!/bin/bash

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

cd ${SHELL_FOLDER}

sudo docker compose pull

sudo docker compose down

sudo docker compose up -d
