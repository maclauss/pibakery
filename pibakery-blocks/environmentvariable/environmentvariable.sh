#!/bin/bash
if [ $3 == "global" ]; then
    su - root -c "echo $1=$2 >> /etc/environment"
    source /etc/environment
else
    su - $3 -c "echo $1=$2 >> ~/.bashrc"
    source ~/.bashrc
fi
