#!/bin/bash

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

cd ${SHELL_FOLDER}

sudo docker compose pull

echo "0 2 * * * root /bin/bash ${SHELL_FOLDER}/update.sh" | sudo tee -a /etc/crontab > /dev/null

./up.sh
