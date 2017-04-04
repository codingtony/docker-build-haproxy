#!/bin/bash -e
mkdir /tmp/haproxy ||:
mkdir /tmp/work
cd /tmp/work
git clone https://gist.github.com/24fab751202dff4d547c.git buildHAProxy
cd /tmp/work/buildHAProxy
./buildHAProxy.sh
cp -r /tmp/work/buildHAProxy/work/target/ /tmp/haproxy/
