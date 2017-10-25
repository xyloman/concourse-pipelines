# concourse-pipelines

Example set of concourse pipelines for app and pcf tile delivery.

# tile-pipeline

![example](https://raw.githubusercontent.com/xyloman/concourse-pipelines/master/tile-pipeline/tile-promotion-pipeline.png)

## Elastic Runtime Updates

Sandbox is assumed to be a small runtime installation when updates pass in sandbox using the SRT they will be promoted to NON-PROD which will leverage the ERT.