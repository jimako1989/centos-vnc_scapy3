FROM consol/centos-xfce-vnc
MAINTAINER jimako1989
RUN sudo yum update \
 && yum install -y python3 tcpdump git \
 && mkdir /tmp \
 && cd /tmp \
 && git clone https://github.com/phaethon/scapy \
 && cd scapy \
 && python3 setup.py install
