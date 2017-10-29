#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
docker run -v ${SCRIPT_DIR}:/root -p 5900:5900 -p 5901:5901 -e JAPANESE_SUPPORT=yes -w /root -it jimako1989/centos-vnc_scapy3 bash