#!/bin/bash -x

mkdir -p /opt/dengonban/v1

pushd $(dirname $0)
cp -R ./* /opt/dengonban/v1/
cp ./dengonban.service /etc/systemd/system/
popd

chmod 700 /opt/dengonban/v1/app.py
systemctl daemon-reload
