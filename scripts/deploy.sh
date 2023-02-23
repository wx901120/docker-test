#!/bin/bash
# echo -e '----docker Login----'
# docker login -u=$1 -p=$2
echo -e "---------1.停止容器--------"
docker stop vite-container
echo -e "---------2.删除容器和对应的镜像--------"
docker rm vite-container
docker rmi wx9527/vite:1.0.0
echo -e '----3.重新拉取新的镜像----'
docker pull wx9527/vite:1.0.0 # 从Docker Hub库里面下载镜像
echo -e '---- 4. create container and run ----'
docker run --rm -d -p 80:80 --name vite-container wx9527/vite:1.0.0
echo -e '----deploy success ----'
