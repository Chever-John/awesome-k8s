sudo kubeadm init \
      --image-repository registry.cn-hangzhou.aliyuncs.com/google_containers \
      --pod-network-cidr 10.244.0.0/16 \
      --cri-socket /run/cri-containerd/cri-containerd.sock \
      --v 5 \
      --ignore-preflight-errors=all




kubeadm join 192.168.31.110:6443 --token c6kvk0.mbjdnnegowthz89f \
    --discovery-token-ca-cert-hash sha256:e111ce2b49a5295f3de74044d8b1ce15fae51b785a3aa955b055203e986d0f46 \
    --cri-socket /run/cri-containerd/cri-containerd.sock

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

  export KUBECONFIG=/etc/kubernetes/admin.conf


kubeadm join 192.168.31.110:6443 --token 0vbq89.dmoitlrlsm66il9h \
        --discovery-token-ca-cert-hash sha256:10c79cb9a35f8c6439370dad66e644156115fd9a118d2295264d68ace6341558 \
        --cri-socket /run/cri-containerd/cri-containerd.sock