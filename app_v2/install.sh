#!/bin/bash -x

mkdir -p /opt/dengonban/v2
mkdir -p /opt/cloudsqlproxy/

pushd $(dirname $0)
cp -R ./* /opt/dengonban/v2/
cp ../cloud_sql_proxy /opt/cloudsqlproxy/
cp ./dengonban.service /etc/systemd/system/
cp ./cloudsqlproxy.service /etc/systemd/system/
popd

chmod 700 /opt/dengonban/v2/app.py
systemctl daemon-reload
