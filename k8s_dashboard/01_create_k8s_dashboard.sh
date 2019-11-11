#!/bin/bash

# Use Aligyun k8s dashboard images
./use_aliyun_k8s_dashboard_images.sh

# Deploy k8s master
kubectl apply -f kubernetes-dashboard.yaml

#create a clusterrolebing for this account
kubectl create clusterrolebinding test:kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard

# Check pod status
kubectl get pods --namespace=kube-system  | grep kubernetes-dashboard

# Check pod details
kubectl describe pods kubernetes-dashboard --namespace=kube-system



