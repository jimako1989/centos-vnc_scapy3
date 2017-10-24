#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
docker run -v ${SCRIPT_DIR}:/root -w /root -it jimako1989/centos-xfce-vnc_python-scapy bash