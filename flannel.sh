kubeadm join 192.168.31.110:6443 \
    --token xw4wr6.8mrqc6e2o57swne6 \
    --discovery-token-ca-cert-hash sha256:f8db9d1057428c44c80fcbe4b1444591bab3d124dcec5ec7fa085fdee79a35eb \
    --cri-socket /run/cri-containerd/cri-containerd.sock

kubeadm join 192.168.199.100:6443 \
    --token cz81zt.orsy9gm9v649e5lf \
    --discovery-token-ca-cert-hash sha256:5edb316fd0d8ea2792cba15cdf1c899a366f147aa03cba52d4e5c5884ad836fe \
    --cri-socket /run/cri-containerd/cri-containerd.sock


kubeadm join 10.100.201.182:6443 --token hf0nvn.wuk23vxfc0a5kk9t \
	--discovery-token-ca-cert-hash sha256:36a415270020d52dc70d457d670d7d16ee277b345476f960eb9cac7a48eec6d9 \
  --cri-socket /run/cri-containerd/cri-containerd.sock

  