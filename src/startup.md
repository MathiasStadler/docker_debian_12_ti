# start the docker image

1) start container =>  sh +x  /home/trapapa/docker_debian_12_ti/src/start_container_lxde_chrome_rust_second.sh
2) start bootstrap inside docker image ( X Display) => sh +x /scripts/bootstrap.sh
3) start vnc viewer => sh +x src/start_vncviewer.sh

shutdown -Fh now

> [!HINT]
> open shell inside container

```bash
# get CONTAINER_ID of started container
docker ps
# open terminal bash
# docker exec -it <CONTAINER_ID>  bash
# e.g.
docker exec -it 55ce2cc2ecd3  bash
# show the ip of current running container
echo "$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' "$(docker ps --format "{{.ID}}" | cut -d " " -f1)")"
# open terminal one liner
docker exec -it "$(docker inspect --format="{{.Id}}" "$(docker ps --format "{{.ID}}" | cut -d " " -f1)")" bash
# close the terminal
exit
# shutdown the container from inside
shutdown -Fh now

```

## start chrome inside container

sh +x /scripts/start-chrome.sh
