#!/bin/bash
set -e

./pull_flannel_images_from_aliyun.sh

# https://v1-13.docs.kubernetes.io/docs/setup/independent/create-cluster-kubeadm/#pod-network
wget -O kube-flannel.yml https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl apply -f kube-flannel.yml

# Wait a while to let network takes effect
sleep 30
./k8s_health_check.sh
