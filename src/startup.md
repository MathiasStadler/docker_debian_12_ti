# start the docker image

1)start container =>  sudo sh +x  /home/trapapa/docker_debian_12_ti/src/start_container_lxde_chrome_rust_second.sh
2)start vnc viewer => sh +x src/start_vncviewer.sh
3)start bootstrap inside docker image ( X Display) => sh +x /scripts/bootstrap.sh

/scripts/bootstrap.sh

shutdown -Fh now

> [!HINT]
> open shell inside container

```bash
# show CONTAINER ID of started container
docker ps
# open terminal bash
docker exec 55ce2cc2ecd3  bash
```
