kubectl --namespace monitoring port-forward svc/prometheus-k8s 9090

kubectl --namespace monitoring port-forward svc/alertmanager-main 9093

kubectl --namespace monitoring port-forward svc/grafana 3000