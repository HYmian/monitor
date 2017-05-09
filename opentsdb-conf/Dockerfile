FROM busybox:latest

COPY supervisor.conf /etc/supervisor/conf.d/

VOLUME /etc/supervisor/conf.d

COPY logback.xml /wise2c/
COPY opentsdb.conf /wise2c/
COPY boot.sh /wise2c/
COPY request.tmpl /wise2c/

VOLUME /wise2c