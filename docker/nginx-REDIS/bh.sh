#!/bin/bash

name=$1


sed -i -r "11s/.*/    server $name:6379;/" /etc/nginx/nginx.conf

