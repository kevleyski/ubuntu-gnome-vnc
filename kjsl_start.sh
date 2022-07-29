#!/bin/bash

build() {
docker build -t ubuntu:18.04 .
}

run() {
sudo docker run -it --rm -p 5901:5901 -e USER=klambert ubuntu:18.04 bash -c 'cat /home/klambert/.vnc/xstartup &&  vncserver :1 -geometry 1920x1080 -depth 24 && tail -F /home/klambert/.vnc/*.log'
}

echo "Connect to localhost:5901 password 1234

#build
run
