#!/bin/bash
# echo -e '----docker Login----'
# docker login -u=$1 -p=$2
echo -e '----docker pull----'
docker pull wx9527/vite:1.0.1 # 从Docker Hub库里面下载镜像
echo -e '---- create container and run ----'
docker run --rm -d -p 80:80 --name vite-container wx9527/vite:1.0.1
echo -e '----deploy success ----'
