#!/bin/bash

SHELL_FOLDER=$(dirname $(readlink -f "$0"))

cd ${SHELL_FOLDER}

git clone --depth=1 https://github.com/FreshRSS/Extensions

sudo docker compose pull

echo "0 3 * * 5 root /bin/bash ${SHELL_FOLDER}/update.sh" | sudo tee -a /etc/crontab > /dev/null

./up.sh

mv Extensions/xExtension-CustomCSS /var/lib/docker/volumes/rss_extensions/_data
mv Extensions/xExtension-CustomJS /var/lib/docker/volumes/rss_extensions/_data
mv Extensions/xExtension-QuickCollapse /var/lib/docker/volumes/rss_extensions/_data
mv Extensions/xExtension-ReadingTime /var/lib/docker/volumes/rss_extensions/_data

./restart.sh