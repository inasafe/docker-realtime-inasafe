#!/bin/sh

docker.io run --name="inasafe-realtime" \
-v /home/realtime/data/indonesia.sqlite:/home/realtime/src/inasafe/realtime/fixtures/indonesia.sqlite \
-v /home/realtime/data/population.tif:/home/realtime/src/inasafe/realtime/fixtures/exposure/population.tif \
-v /home/realtime/data/population.keywords:/home/realtime/src/inasafe/realtime/fixtures/exposure/population.keywords \
-v /home/realtime/shakemaps-cache:/home/realtime/shakemaps-cache \
-v /home/realtime/shakemaps-extracted:/home/realtime/shakemaps-extracted \
-p 2222:22 \
-d -t AIFDR/inasafe-realtime:latest