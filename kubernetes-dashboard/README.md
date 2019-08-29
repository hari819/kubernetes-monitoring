# kubernetes dashboard

refer: https://github.com/kubernetes/dashboard

1. 创建相关资源


```
wget https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml
kubectl apply -f kubernetes-dashboard.yaml
```

2. 访问a

refer: https://github.com/kubernetes/dashboard/wiki/Accessing-Dashboard---1.7.X-and-above

```
kubectl -n kube-system edit service kubernetes-dashboard
```

Change type: ClusterIP to type: NodePort and save file. 

```
kubectl -n kube-system get service kubernetes-dashboard
NAME                   TYPE       CLUSTER-IP     EXTERNAL-IP   PORT(S)         AGE
kubernetes-dashboard   NodePort   10.100.162.9   <none>        443:30690/TCP   38m
 
```
可以看到，dashboard已经通过30690端口，暴露在主机上。

然后可以用 `https://114.67.64.173:30690` 访问了。

3. v2

refer: https://kubernetes.io/docs/tasks/access-application-cluster/web-ui-dashboard/

v1 版本不支持 metric-server

安装v2版本

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta1/aio/deploy/recommended.yaml

