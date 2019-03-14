#!/usr/bin/env bash

name=$1
comp=$(sed -n '3 p' test.txt)

echo "$comp"

if [ "$comp" == "    server $name:6379;" ]; then
echo 'The same'
exit
fi

echo 'No exit'
sed -i -r "3s/.*/    server $name:6379;/" "test.txt"

