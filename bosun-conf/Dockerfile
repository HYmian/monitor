FROM busybox:latest

MAINTAINER mian <gopher.mian@outlook.com>

COPY bosunrules.conf /data/
COPY bosun.toml /data/

VOLUME /data

COPY supervisor.conf /etc/supervisor/conf.d/

VOLUME /etc/supervisor/conf.d