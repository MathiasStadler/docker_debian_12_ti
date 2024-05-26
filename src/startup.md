# start the docker image

- show all inactive container

```bash
   docker ps -a
```

- remove a not necessary container

[e.g.](https://www.scribbr.com/definitions/for-example-abbreviation/)

```bash
# docker remove <CONTAINER_ID>
# e.g.
docker rm 8a57b47b7bf5
```

- follow this step

1. start container => sh +x /home/trapapa/docker_debian_12_ti/src/start_container_lxde_chrome_rust_second.sh
2. start bootstrap inside docker image ( X Display) => sh +x /scripts/bootstrap.sh
3. start vnc viewer in vscode terminal => sh +x src/start_vncviewer.sh -> a display should open in a another windows
4. inside X Display open a terminal and switch to normal user (our USER is user) => sudo su - user
5. start the chromedriver as user => see file ./src/scripts/start_chromedriver.sh
6. open a terminal, switch to user home folder and test this was successful=> cd && pwd -> output should be: /home/user
7. open another terminal, change again tu our user and change to folder /home/user/workspace/new_thirtyfour
8. possibly change the file permission to user:user => sudo chown -R user:user /home/user/workspace/new_thirtyfour
9. build the rust program => cargo build --example tokio_finviz_method_five
10. run the rust program => cargo run --example tokio_finviz_method_five -> the should open automatic

97. stop container inside => shutdown -Fh now
98. show all stopped container and get <CONTAINER_ID> => docker ps -a
99. remove container => docker remove <CONTAINER_ID>

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
