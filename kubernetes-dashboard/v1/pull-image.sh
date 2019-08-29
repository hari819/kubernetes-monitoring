#!/bin/bash

imageName="kubernetes-dashboard-amd64:v1.10.1"

filed_registry="k8s.gcr.io"
mirror_registry="registry.aliyuncs.com/google_containers"

docker pull $mirror_registry/$imageName
docker tag $mirror_registry/$imageName $filed_registry/$imageName
docker rmi $mirror_registry/$imageName

