
#!/bin/bash

CONCOURSE_TARGET=dev
cd tiles
FILES=*
for f in $FILES
do
    echo "Creating tile pipeline based upon tile file $f..."
    fly -t $CONCOURSE_TARGET set-pipeline -p ${f%.*} -c ../pipeline.yml -l ../foundations.yml -l $f -n
done

fly -t $CONCOURSE_TARGET set-pipeline -p elastic-runtime -c ert-pipeline.yml -l foundations.yml -n