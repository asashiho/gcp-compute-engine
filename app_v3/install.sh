#!/bin/bash -x

mkdir -p /opt/dengonban/v3
mkdir -p /opt/cloudsqlproxy/

pushd $(dirname $0)
cp -R ./* /opt/dengonban/v3/
cp ./dengonban.service /etc/systemd/system/
cp ./cloudsqlproxy.service /etc/systemd/system/
popd

chmod 700 /opt/dengonban/v3/app.py
systemctl daemon-reload
