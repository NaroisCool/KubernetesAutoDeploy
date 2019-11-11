#!/bin/bash

set -e

# Reset firstly if ran kubeadm init before
kubeadm reset -f

# kubeadm init with flannel network
kubeadm init --apiserver-advertise-address=192.168.154.136 --token-ttl 0 --kubernetes-version=v1.16.2 --pod-network-cidr=10.244.0.0/16


mkdir -p $HOME/.kube
sudo cp /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
cp -p $HOME/.bash_profile $HOME/.bash_profile.bak$(date '+%Y%m%d%H%M%S')
echo "export KUBECONFIG=$HOME/.kube/config" >> $HOME/.bash_profile
source $HOME/.bash_profile


