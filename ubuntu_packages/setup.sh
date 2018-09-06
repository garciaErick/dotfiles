#!/bin/bash

#apt update -y
#apt upgrade -y
apt install -y $(cat packages_to_install.txt) 
