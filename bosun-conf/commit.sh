#!/bin/sh

#echo "First arg: $1"
#echo "Second arg: $2"
#echo "third arg: $3"

#echo $1 >> /tmp/args.txt
#echo $2 >> /tmp/args.txt
#echo $3 >> /tmp/args.txt

cd /opt/bosun/monitor/bosun-conf && /usr/local/bin/git commit -am "$2 : $3"
