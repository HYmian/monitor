FROM centos:7

COPY curator.repo /etc/yum.repos.d/

RUN yum install elasticsearch-curator -y \
    && yum clean all

WORKDIR /mian

COPY config.yml config.yml

