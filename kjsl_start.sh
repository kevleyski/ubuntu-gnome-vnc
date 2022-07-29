#!/bin/bash
sudo docker run -it --rm -p 5901:5901 -e USER=asap  pascalbedouet/ubuntu:18.04-gnome-vnc  bash -c 'cat /home/asap/.vnc/xstartup &&  vncserver :1 -geometry 1680x1050 -depth 24 && tail -F /home/asap/.vnc/*.log'
