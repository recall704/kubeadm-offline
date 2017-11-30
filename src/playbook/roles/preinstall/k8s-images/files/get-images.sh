

docker pull gcr.io/google_containers/kube-apiserver-amd64:v1.8.4
docker pull gcr.io/google_containers/kube-controller-manager-amd64:v1.8.4
docker pull gcr.io/google_containers/kube-scheduler-amd64:v1.8.4
docker pull gcr.io/google_containers/etcd-amd64:3.0.17
docker pull gcr.io/google_containers/kube-proxy-amd64:v1.8.4
docker pull gcr.io/google_containers/k8s-dns-sidecar-amd64:1.14.5
docker pull gcr.io/google_containers/k8s-dns-kube-dns-amd64:1.14.5
docker pull gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64:1.14.5
docker pull gcr.io/google_containers/pause-amd64:3.0
docker pull quay.io/calico/node:v2.6.3
docker pull quay.io/calico/kube-controllers:v1.0.1
docker pull quay.io/calico/cni:v1.11.1
docker pull quay.io/coreos/etcd:v3.1.10


mkdir -p /tmp/k8s-images

docker save gcr.io/google_containers/kube-apiserver-amd64:v1.8.4             -o  /tmp/k8s-images/kube-apiserver.tar
docker save gcr.io/google_containers/kube-controller-manager-amd64:v1.8.4    -o  /tmp/k8s-images/kube-controller-manager.tar
docker save gcr.io/google_containers/kube-scheduler-amd64:v1.8.4             -o  /tmp/k8s-images/kube-scheduler.tar
docker save gcr.io/google_containers/etcd-amd64:3.0.17                       -o  /tmp/k8s-images/gcr-etcd.tar
docker save gcr.io/google_containers/kube-proxy-amd64:v1.8.4                 -o  /tmp/k8s-images/kube-proxy.tar
docker save gcr.io/google_containers/k8s-dns-sidecar-amd64:1.14.5            -o  /tmp/k8s-images/dns-sidecar.tar
docker save gcr.io/google_containers/k8s-dns-kube-dns-amd64:1.14.5           -o  /tmp/k8s-images/dns-kube-dns.tar
docker save gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64:1.14.5      -o  /tmp/k8s-images/dns-dnsmasq-nanny.tar
docker save gcr.io/google_containers/pause-amd64:3.0                         -o  /tmp/k8s-images/pause.tar
docker save quay.io/calico/node:v2.6.3                                       -o  /tmp/k8s-images/calico-node.tar
docker save quay.io/calico/kube-controllers:v1.0.1                           -o  /tmp/k8s-images/quay-kube-controller.tar
docker save quay.io/calico/cni:v1.11.1                                       -o  /tmp/k8s-images/calico-cni.tar
docker save quay.io/coreos/etcd:v3.1.10                                      -o  /tmp/k8s-images/quay-etcd.tar