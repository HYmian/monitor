FROM busybox

MAINTAINER mian <gopher.mian@outlook.com>

COPY bosun.conf /data/
COPY bosunrules.conf /data/
COPY bosun.toml /data/
COPY scollector.toml /data/

VOLUME /data

COPY supervisor.conf /etc/supervisor/conf.d/

VOLUME /etc/supervisor/conf.d