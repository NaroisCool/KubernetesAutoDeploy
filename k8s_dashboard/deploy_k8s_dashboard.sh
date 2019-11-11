#!/bin/bash


# Create kubernetes dashboard
./01_create_k8s_dashboard.sh

# Create sample user
#./02_create_sample_user.sh

# Create user cert
./03_generate_user_cert.sh

#create a clusterrolebing for this account
kubectl create clusterrolebinding test:kubernetes-dashboard --clusterrole=cluster-admin --serviceaccount=kube-system:kubernetes-dashboard

# Prompt to login
echo "Please login K8S dashboard:"
echo "https://your_master_ip:6443/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/"
echo "Please paste above generated Service Account Token to login"


# Install Heapster
#./04_install_heapster.sh

