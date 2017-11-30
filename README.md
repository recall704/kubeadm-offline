

这是一个半自动的 kubeadm 离线安装 ansible 脚本

## 一、准备机器
1. 我的三台机器 ip 是 192.168.88.201 192.168.88.202 192.168.88.203
   如果你的机器不是，你需要修改 src/cluster/hosts 文件中对应的值
2. 我的执行 ansible 的机器已经拷贝好了  ssh-key 到三台机器
3. 目前只支持一个 master， 多个 worker 
4. 系统仅支持 centos 7，我本地测试的是 centos 7.2 mini

## 二、执行 ansible 脚本

```bash
cd src
ansible-playbook -i cluster/hosts playbook/cluster.yml -v
```

## 三、master

```bash
kubeadm init --apiserver-advertise-address=192.168.88.201 --pod-network-cidr=10.244.0.0/16 --kubernetes-version=v1.8.4

mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
```

执行完成后，会出现 

```bash
You can now join any number of machines by running the following on each node
as root:

  kubeadm join --token e87c8d.95b301114a4e3551 192.168.88.201:6443 --discovery-token-ca-cert-hash sha256:d9df9ca973a4368d2c4c3c4787b268eb4d77806cd9528cb59ffc546f13cc4402
```

## 四、worker
在 worker 上执行

```bash
kubeadm join --token e87c8d.95b301114a4e3551 192.168.88.201:6443 --discovery-token-ca-cert-hash sha256:d9df9ca973a4368d2c4c3c4787b268eb4d77806cd9528cb59ffc546f13cc4402
```

## 五、calico
在 master 节点上执行

```bash
kubectl apply -f /etc/kubernetes/addons/calico.yaml
```
