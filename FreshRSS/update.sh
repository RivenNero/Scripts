#!/bin/bash

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

cd ${SHELL_FOLDER}/Extensions

git pull

cd ${SHELL_FOLDER}

sudo docker compose pull

./down.sh

mv Extensions/xExtension-CustomCSS /var/lib/docker/volumes/rss_extensions/_data
mv Extensions/xExtension-CustomJS /var/lib/docker/volumes/rss_extensions/_data
mv Extensions/xExtension-QuickCollapse /var/lib/docker/volumes/rss_extensions/_data
mv Extensions/xExtension-ReadingTime /var/lib/docker/volumes/rss_extensions/_data

./up.sh
