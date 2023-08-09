helm repo add harbor https://helm.goharbor.io

$ helm install harbor harbor/harbor -f values.yaml --namespace harbor --create-namespace
NAME: harbor
LAST DEPLOYED: Mon Oct 17 21:53:28 2022
NAMESPACE: harbor
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
Please wait for several minutes for Harbor deployment to complete.
Then you should be able to visit the Harbor portal at https://core.harbor.domain
For more details, please visit https://github.com/goharbor/harbor