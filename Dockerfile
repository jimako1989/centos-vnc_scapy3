FROM consol/centos-xfce-vnc
MAINTAINER jimako1989
RUN yum update
RUN yum install -y python python-pip tcpdump
RUN pip install --upgrade pip
RUN pip install scapy