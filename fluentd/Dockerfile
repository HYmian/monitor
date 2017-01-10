FROM centos:7

MAINTAINER mian <huaxiang@wise2c.com>

RUN yum install sudo gcc make mariadb-devel -y && \
    curl -L https://toolbelt.treasuredata.com/sh/install-redhat-td-agent2.sh | sh && \
    td-agent-gem install fluent-plugin-sql --no-document && \
    td-agent-gem install mysql2 --no-document && \
    yum remove gcc mariadb-devel -y && \
    yum clean all

COPY fluent-http.conf /etc/td-agent/td-agent-http.conf
COPY fluent-mysql.conf /etc/td-agent/td-agent-mysql.conf

ENV FLUENTD_CONF fluent.conf

ENTRYPOINT td-agent

CMD ["-c" "/etc/td-agent/td-agent-http.conf"]