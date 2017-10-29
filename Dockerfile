FROM nutsllc/vnc-centos-gnome
MAINTAINER jimako1989
USER root

# To install rpm containing python35u, install it and then create its alias.
RUN yum install -y https://centos6.iuscommunity.org/ius-release.rpm \
 && yum install -y python35u python35u-libs python35u-devel python35u-pip \
 && ln -s /usr/bin/python3.5 /usr/bin/python3 \
 && unlink /usr/bin/python \
 && ln -s /usr/bin/python3 /usr/bin/python \
 && ln -s /usr/bin/pip3.5 /usr/bin/pip \

# To install scapy
 && yum install -y tcpdump git \
 && cd /tmp \
 && git clone https://github.com/phaethon/scapy \
 && cd scapy \
 && python setup.py install
