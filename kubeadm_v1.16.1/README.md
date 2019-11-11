# Install Kubernetes v1.16.2

Requires 2 CPUs

* Use Aliyun Yum repo
* Use Aliyun Docker repo
* Use Aliyun Kubernetes repo
* Docker 18.06
* kubeadm 1.16.2
* kubelet 1.16.2
* kubectl 1.16.2
* flannel v0.10.0

## Kubernetes Images

Since Kubernetes 1.11

```bash
kubeadm config images list
kubeadm config images pull
```

* k8s.gcr.io/kube-apiserver:v1.16.2
* k8s.gcr.io/kube-controller-manager:v1.16.2
* k8s.gcr.io/kube-scheduler:v1.16.2
* k8s.gcr.io/kube-proxy:v1.16.2
* k8s.gcr.io/pause:3.1
* k8s.gcr.io/etcd:3.3.15-0
* k8s.gcr.io/coredns:1.6.2
