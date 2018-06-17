#!/bin/bash
if [ $3 == "global" ]; then
  su - root -c "echo $1=$2 >> /eytc/environment"
else
  su - $3 -c "echo $1=$2 >> ~/.bashrc"
fi
