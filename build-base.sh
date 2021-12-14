#!/bin/sh

if [ -z "$1" ]
 then
   echo "No version provided. "
   exit 1
fi

version=$1

docker build -t mimidots/php7.4:$version-alpine .