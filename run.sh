#!/bin/bash
/bin/docker run -i -t -d --name redis-server --memory 100m --cpus 1  --ip  172.18.0.2 -p 5379:6379 --mount type=bind,source=/var/log/docker-redis,target=/var/log/redis --mount type=bind,source=/home/huynt/docker-redis/config,target=/etc/redis ubuntu-redis /bin/bash
