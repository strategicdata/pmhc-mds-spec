#!/bin/bash

docker build -t stratdat/docs-pmhc-mds doc \
  && docker push stratdat/docs-pmhc-mds \
  && curl -I -X POST https://cloud.docker.com//api/app/v1/service/1585501e-ca0c-4187-85d6-fb0348ec8e74/trigger/36734c4f-8606-4f6c-9dc5-337194fedbaf/call/