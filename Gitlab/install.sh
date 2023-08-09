helm repo add gitlab https://charts.gitlab.io/


helm install gitlab gitlab/gitlab \
  --set global.hosts.domain=gitlab.chever.me \
  --set certmanager-issuer.email=cheverjonathan@gmail.com
