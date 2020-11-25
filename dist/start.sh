#!/bin/bash
sudo docker kill opencanary
sudo docker rm opencanary
sudo docker build -t opencanary .
sudo docker run -d -p 1000:1000 -e HOSTIP="10.0.0.16" --name opencanary opencanary
