#!/bin/bash
#imageName='k8s.gcr.io/metrics-server-amd64:v0.3.3'
imageName='metrics-server-amd64:v0.3.3'


filed_registry="k8s.gcr.io"
mirror_registry="registry.aliyuncs.com/google_containers"

docker pull $mirror_registry/$imageName
docker tag $mirror_registry/$imageName $filed_registry/$imageName
docker rmi $mirror_registry/$imageName

