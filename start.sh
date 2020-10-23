#!/bin/bash
#echo never > /sys/kernel/mm/transparent_hugepage/enabled
#echo "Asia/Ho_Chi_Minh" > /etc/timezone
#dpkg-reconfigure -f noninteractive tzdata
redis-server /etc/redis/redis.conf
echo date
exec $@
