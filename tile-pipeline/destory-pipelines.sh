#!/bin/bash

CONCOURSE_TARGET=dev
cd tiles
FILES=*
for f in $FILES
do
    echo "Destorying tile pipeline based upon tile file $f..."
    fly -t $CONCOURSE_TARGET destroy-pipeline -p ${f%.*}-tile -n
done