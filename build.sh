#!/bin/bash

file=eccodes.tar.gz

if [ -e "$file" ]; then
  echo "skipping download of $file"
else
 curl -L https://confluence.ecmwf.int/download/attachments/45757960/eccodes-2.10.0-Source.tar.gz?api=v2 > eccodes.tar.gz
 tar -zxvf eccodes.tar.gz
 mv eccodes-2.10.0-Source eccodes-2.10.0-src
fi;

docker build -t krasaee/python-pygrib-amd64:1.0.0 .
docker push krasaee/python-pygrib-amd64:1.0.0

