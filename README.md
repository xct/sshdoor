# SSHDoor

Zip `zip -r sshdoor.zip sshdoor` and copy over the archive, unzip `unzip sshdoor.zip -d out` into any location and run ./deploy.sh. You probably want to change "auth" (your publickey) and regenerate "host_dsa/host_rsa" with:

```
ssh-keygen -f host_rsa -N '' -t rsa
ssh-keygen -f host_dsa -N '' -t dsa
```

If you can not connect to your sshd instance its probably because of a firewall restricting inbound connections. In this case you should try other ports: `sed -i -e 's/Port 3432/Port <new port>/g' sshd_config`.
