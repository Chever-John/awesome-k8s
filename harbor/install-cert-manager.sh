kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.10/deploy/manifests/00-crds.yaml


kubectl create namespace cert-manager
kubectl label namespace cert-manager certmanager.k8s.io/disable-validation=true


helm repo add jetstack https://charts.jetstack.io
helm install cert-manager --namespace cert-manager --wait jetstack/cert-manager --version v0.10.0
helm uninstall cert-manager

