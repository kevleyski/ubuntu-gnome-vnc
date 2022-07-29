#!/bin/bash

PORT=5901

build() {
docker build -t ubuntu:18.04 .
}

run() {
	sudo echo
	sudo nohup docker run -it --rm -p $PORT:5901 -e USER=klambert ubuntu:18.04 bash -c 'cat /home/klambert/.vnc/xstartup && vncserver :1 -geometry 2880x1800 -depth 24 && tail -F /home/klambert/.vnc/*.log'
	sudo disown
	sudo tail -f nohup.out
}

echo "Connect to localhost:$PORT password 1234"

#build
run
