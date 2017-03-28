#! /bin/bash

service=`curl http://rancher-metadata/latest/self/container/service_name`
id=`curl http://rancher-metadata/latest/self/container/uuid`
host_ip=`curl http://rancher-metadata/latest/self/host/agent_ip`
#ip='http://rancher-metadata/latest/self/container/primary_ip'
name=`curl http://rancher-metadata/latest/self/container/name`

cat /data/request.tmpl | sed \
    -e "s/@ID@/${id}/g" \
    -e "s/@Name@/${service}/g" \
    -e "s/@IP@/${host_ip}/g" \
  > ./request

curl -X PUT --data-binary @request http://consul:8500/v1/agent/service/register

exec /usr/bin/supervisord