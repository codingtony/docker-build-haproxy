#!/bin/bash -e
mkdir /work
cd /work && git clone https://gist.github.com/24fab751202dff4d547c.git buildHAProxy
cd /work/buildHAProxy
./buildHAProxy.sh
