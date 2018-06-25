#!/bin/bash

( sudo su && \
  apt-get update -y && \
  apt-get dist-upgrade -y && \
  apt-get upgrade -y )
