
#!/bin/bash

CONCOURSE_TARGET=dev
cd tiles
FILES=*
for f in $FILES
do
    echo "Creating tile pipeline based upon tile file $f..."
    echo "fly -t $CONCOURSE_TARGET set-pipeline -p ${f%.*} -c ../foundations.yml -l $f" -n
done
