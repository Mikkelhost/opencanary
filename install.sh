#!/bin/bash
git pull
rm dist/opencanary-0.5.6.tar.gz
python3 setup.py sdist
cd dist
./start.sh
