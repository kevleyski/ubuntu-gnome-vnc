#!/bin/bash
sudo docker run -it --rm -p 5901:5901 -e USER=klambert ubuntu:18.04-gnome-vnc bash -c 'cat /home/klambert/.vnc/xstartup &&  vncserver :1 -geometry 1920x1080 -depth 24 && tail -F /home/klambert/.vnc/*.log'
