#!/bin/bash

name=$1


comp=$(sed -n '11 p' /etc/nginx/nginx.conf)


if [ "$comp" == "    server $name:6379;" ]; then
echo 'Address already loaded'
exit
fi





sed -i -r "11s/.*/    server $name:6379;/" /etc/nginx/nginx.conf

/usr/sbin/nginx -s reload


