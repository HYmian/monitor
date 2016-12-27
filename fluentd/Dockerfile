FROM centos:7

MAINTAINER mian <huaxiang@wise2c.com>

RUN yum install sudo -y && \
    curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh && \
    yum clean all

EXPOSE 24284

COPY fluent.conf /etc/td-agent/td-agent.conf

ENV FLUENTD_CONF fluent.conf

CMD exec td-agent
