#!/usr/bin/bash
export DISPLAY=:0
xhost +

echo "run command => docker  exec -it $(docker ps --format "{{.ID}}" | cut -d " " -f1)  bash"
docker  exec -it "$(docker ps --format "{{.ID}}" | cut -d " " -f1)"  bash

