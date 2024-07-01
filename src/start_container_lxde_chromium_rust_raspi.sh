#!/usr/bin/bash
# docker run -it \
# -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
# -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
# -v ~/.config/pulse/cookie:/root/.config/pulse/cookie \
# --group-add $(getent group audio | cut -d: -f3) \
# --cap-add SYS_ADMIN \
# --cap-add  CAP_SYS_MODULE \
# --security-opt apparmor=unconfined \
# --tmpfs /run \ 
# --device /dev/snd \
# --device /dev/dri \
# -v /dev/shm:/dev/shm \
# -v /home/trapapa/docker_debian_12/workspace:/home/user/workspace:rw \
# --cgroupns=host \
# -v /sys/fs/cgroup:/sys/fs/cgroup \
# debian_lxde_chrome bash

# /w sound
# docker run -it \
# --security-opt apparmor=unconfined \
# --cap-add SYS_ADMIN \
# --cap-add CAP_SYSLOG \
# --tmpfs /run \
# --volume /sys/fs/cgroup:/sys/fs/cgroup \
# --volume /dev/shm:/dev/shm \
# --device /dev/snd \
# --device /dev/dri \
# --volume /sys/fs/cgroup:/sys/fs/cgroup \
# --volume /dev/shm:/dev/shm \
# --volume ./workspace:/home/user/workspace:rw \
# --env PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
# --volume ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
# --volume ~/.config/pulse/cookie:/root/.config/pulse/cookie \
# --group-add $(getent group audio | cut -d: -f3) \
# debian_lxde_chrome_rust_second bash


docker run -it \
--security-opt apparmor=unconfined \
--cap-add SYS_ADMIN \
--cap-add CAP_SYSLOG \
--cap-add CAP_PERFMON \
--cap-add CAP_BPF \
--cap-add CAP_CHECKPOINT_RESTORE \
--tmpfs /run \
--volume /sys/fs/cgroup:/sys/fs/cgroup \
--volume /dev/shm:/dev/shm \
--device /dev/snd \
--device /dev/dri \
--volume /sys/fs/cgroup:/sys/fs/cgroup \
--volume /dev/shm:/dev/shm \
--volume /home/trapapa/docker_debian_12_ti/workspace:/home/user/workspace:rw \
--env PULSE_SERVER=unix:"${XDG_RUNTIME_DIR}"/pulse/native \
--volume "${XDG_RUNTIME_DIR}"/pulse/native:"${XDG_RUNTIME_DIR}"/pulse/native \
--volume ~/.config/pulse/cookie:/root/.config/pulse/cookie \
--group-add "$(getent group audio | cut -d: -f3)" \
debian_lxde_chromium_rust_raspi bash

# start script
# sudo sh +x ./start_container_lxde_chrome.sh

# ps -xaaue
# ps axww
# ps aaxwwue
# ps -efw

# CAP_PERFMON, CAP_BPF, and CAP_CHECKPOINT_RESTORE