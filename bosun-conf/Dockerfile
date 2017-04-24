FROM busybox

MAINTAINER mian <gopher.mian@outlook.com>

COPY bosunrules.conf /data/
COPY bosun.toml /data/
COPY scollector.toml /data/
COPY boot.sh /data/
COPY request.tmpl /data/

VOLUME /data

COPY supervisor.conf /etc/supervisor/conf.d/

VOLUME /etc/supervisor/conf.d
