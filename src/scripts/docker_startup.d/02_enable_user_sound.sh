#!/usr/bin/bash
if [ -d /root/.config ]; then
	echo "Directory exists."
	cp -av  /root/.config /home/user/
fi
