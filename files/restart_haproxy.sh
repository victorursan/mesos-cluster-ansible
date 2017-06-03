#!/bin/bash

sudo nl-qdisc-add --dev=lo --parent=1:4 --id=40: --update plug --buffer &> /dev/null
haproxy -f /etc/haproxy/haproxy.cfg -p /var/run/haproxy.pid -sf $(cat /var/run/haproxy.pid)
sudo nl-qdisc-add --dev=lo --parent=1:4 --id=40: --update plug--release-indefinite &> /dev/null
exit 0
