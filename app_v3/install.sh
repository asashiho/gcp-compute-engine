#!/bin/bash -x

mkdir -p /opt/dengonban/v3

pushd $(dirname $0)
cp -R ./* /opt/dengonban/v3/
cp ./dengonban.service /etc/systemd/system/
popd

chmod 700 /opt/dengonban/v3/app.py
systemctl daemon-reload
