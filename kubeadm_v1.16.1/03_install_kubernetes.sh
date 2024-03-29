#!/bin/bash

set -e

./use_aliyun_kubernetes_yum_source.sh

setenforce 0

yum install -y kubelet-1.16.2 kubeadm-1.16.2 kubectl-1.16.2 kubernetes-cni-0.7.5

# Check installed Kubernetes packages
yum list installed | grep kube

systemctl enable kubelet && systemctl start kubelet

#Add alia for kubectl in namespace kube-system
cat >>$HOME/.bashrc<<EOF
alias ksys='kubectl -n kube-system'
EOF

source $HOME/.bashrc

# Configure cgroup matched with Docker
./configure_cgroup.sh
systemctl daemon-reload
systemctl restart kubelet
