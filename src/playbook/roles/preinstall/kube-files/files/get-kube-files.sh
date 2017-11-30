mkdir -p /tmp/kube-files
yum install -y kubelet kubeadm kubectl --downloadonly --downloaddir=/tmp/kube-files
cd /tmp
tar cvfz kub-files.tar.gz kub-files
