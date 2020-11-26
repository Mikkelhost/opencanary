#!/bin/bash
sudo docker kill opencanary
sudo docker rm opencanary
sudo docker build -t opencanary .
sudo docker run -d -p 1000:1000 -e TZ="CST6CDT" --name opencanary opencanary
