#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
docker run -v ${SCRIPT_DIR}:/root/home -p 127.0.0.1:5900:5900 -p 127.0.0.1:5901:5901 -e JAPANESE_SUPPORT=yes -w /root -itd jimako1989/centos-vnc_scapy3