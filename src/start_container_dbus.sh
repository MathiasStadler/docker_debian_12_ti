#!/bin/bash
# docker run -it \
# --cap-add SYS_ADMIN \
# --cap-add  CAP_SYS_MODULE \
# --security-opt apparmor=unconfined \
# --tmpfs /run \ 
# --device /dev/dri \
# -v /dev/shm:/dev/shm \
# -v ./workspace:/home/user/workspace:rw \
# --cgroupns=host \
# -v /sys/fs/cgroup:/sys/fs/cgroup \
# debian_lxde_quit_dbus bash


docker run -it \
--security-opt apparmor=unconfined \
--cap-add SYS_ADMIN \
--tmpfs /run \
-v /sys/fs/cgroup:/sys/fs/cgroup \
debian_lxde_quit_dbus bash