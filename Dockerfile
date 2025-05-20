FROM oraclelinux:8

RUN yum install -y python3 python3-dnf && \
    alternatives --set python /usr/bin/python3