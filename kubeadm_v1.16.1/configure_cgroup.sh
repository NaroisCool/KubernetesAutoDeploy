#!/bin/bash

set -e

sed -i "s/cgroup-driver=systemd/cgroup-driver=cgroupfs/g" /usr/lib/systemd/system/kubelet.service.d/10-kubeadm.conf
