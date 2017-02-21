#! /bin/bash

# service=`wget -qO- http://rancher-metadata/latest/self/container/service_name`
id=`wget -qO- http://rancher-metadata/latest/self/container/service_index`
# uuid=`wget -qO- http://rancher-metadata/latest/self/container/uuid`
ip=`wget -qO- http://rancher-metadata/latest/self/container/ips/0`
name=`wget -qO- http://rancher-metadata/latest/self/container/name`
# port=`wget -qO- http://rancher-metadata/latest/self/container/ports/0`

# bin=`dirname "${BASH_SOURCE-$0}"`
# bin=`cd "$bin"; pwd`

cat /data/request.tmpl | sed \
    -e "s/@ID@/${id}/g" \
    -e "s/@Name@/${name}/g" \
    -e "s/@IP@/${ip}/g"
  > ./request

curl -X PUT --data-binary @request http://consul:8500/v1/agent/service/register

exec /usr/bin/supervisord