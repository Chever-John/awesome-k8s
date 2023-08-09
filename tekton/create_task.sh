// 创建 Task

// 创建 checkout 的 task
kubectl apply -f https://ghproxy.com/https://raw.githubusercontent.com/lyzhang1999/gitops/main/ci/18/tekton/task/git-clone.yaml

// 创建构建和推送镜像的 Task
kubectl apply -f https://ghproxy.com/https://raw.githubusercontent.com/lyzhang1999/gitops/main/ci/18/tekton/task/docker-build.yaml
task.tekton.dev/docker-socket configured


// 创建 Pipeline
kubectl apply -f https://ghproxy.com/https://raw.githubusercontent.com/lyzhang1999/gitops/main/ci/18/tekton/pipeline/pipeline.yaml
pipeline.tekton.dev/github-trigger-pipeline created


// 创建 EventListener
kubectl apply -f https://ghproxy.com/https://raw.githubusercontent.com/lyzhang1999/gitops/main/ci/18/tekton/trigger/github-event-listener.yaml
eventlistener.triggers.tekton.dev/github-listener created


kubectl apply -f https://ghproxy.com/https://raw.githubusercontent.com/lyzhang1999/gitops/main/ci/18/tekton/ingress/github-listener.yaml
ingress.networking.k8s.io/ingress-resource created

// 创建 TriggerTemplate
kubectl apply -f https://ghproxy.com/https://raw.githubusercontent.com/lyzhang1999/gitops/main/ci/18/tekton/trigger/github-trigger-template.yaml
triggertemplate.triggers.tekton.dev/github-template created


// 创建 SA 和 PVC
kubectl apply -f https://ghproxy.com/https://raw.githubusercontent.com/lyzhang1999/gitops/main/ci/18/tekton/other/service-account.yaml
serviceaccount/tekton-build-sa created
clusterrolebinding.rbac.authorization.k8s.io/tekton-clusterrole-binding created
persistentvolumeclaim/pipeline-pvc created
role.rbac.authorization.k8s.io/tekton-triggers-github-minimal created
rolebinding.rbac.authorization.k8s.io/tekton-triggers-github-binding created
clusterrole.rbac.authorization.k8s.io/tekton-triggers-github-clusterrole created
clusterrolebinding.rbac.authorization.k8s.io/tekton-triggers-github-clusterbinding created
serviceaccount/tekton-build-sa created
clusterrolebinding.rbac.authorization.k8s.io/tekton-clusterrole-binding created
persistentvolumeclaim/pipeline-pvc created
role.rbac.authorization.k8s.io/tekton-triggers-github-minimal created
rolebinding.rbac.authorization.k8s.io/tekton-triggers-github-binding created
clusterrole.rbac.authorization.k8s.io/tekton-triggers-github-clusterrole created
clusterrolebinding.rbac.authorization.k8s.io/tekton-triggers-github-clusterbinding created