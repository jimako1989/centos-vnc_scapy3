FROM consol/centos-xfce-vnc
FROM python:latest
MAINTAINER jimako1989
RUN yum install -y tcpdump git \
 && mkdir /tmp \
 && cd /tmp \
 && git clone https://github.com/phaethon/scapy \
 && cd scapy \
 && python3 setup.py install
