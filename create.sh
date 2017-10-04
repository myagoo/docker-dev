#!/bin/bash
docker build -t dev .
docker run --name dev -i -t -u node -p 8080:8080 -v /home/myagoo/dev:/workspace dev bash