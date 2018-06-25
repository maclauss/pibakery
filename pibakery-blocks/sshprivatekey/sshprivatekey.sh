#!/bin/bash

( sudo su && \
  echo -e $1 > /home/pi/.ssh/id_rsa && \
  echo -e $2 > /home/pi/.ssh/id_rsa.pub )
