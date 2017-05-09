#! /bin/bash

cp /wise2c/opentsdb.conf $TSDB/ -f
cp /wise2c/logback.xml $TSDB/src/ -f

exec /usr/bin/supervisord