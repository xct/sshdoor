#!/bin/bash

echo "..::Deploying SSH Daemon::.."
echo "=> "$(grep "Port" sshd_config)

mkdir -p /tmp/xct/
cp host_* /tmp/xct/
cp auth /tmp/xct/

/usr/sbin/sshd -f sshd_config