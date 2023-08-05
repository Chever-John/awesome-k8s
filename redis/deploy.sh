➜   helm install chever-redis bitnami/redis -nchever-redis
WARNING: Kubernetes configuration file is group-readable. This is insecure. Location: /Users/cheverjohn/.kube/config
WARNING: Kubernetes configuration file is world-readable. This is insecure. Location: /Users/cheverjohn/.kube/config
NAME: chever-redis
LAST DEPLOYED: Sat Aug  5 03:02:09 2023
NAMESPACE: chever-redis
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
CHART NAME: redis
CHART VERSION: 17.14.5
APP VERSION: 7.0.12

** Please be patient while the chart is being deployed **

Redis&reg; can be accessed on the following DNS names from within your cluster:

    chever-redis-master.chever-redis.svc.cluster.local for read/write operations (port 6379)
    chever-redis-replicas.chever-redis.svc.cluster.local for read-only operations (port 6379)



To get your password run:

    export REDIS_PASSWORD=$(kubectl get secret --namespace chever-redis chever-redis -o jsonpath="{.data.redis-password}" | base64 -d)

To connect to your Redis&reg; server:

1. Run a Redis&reg; pod that you can use as a client:

   kubectl run --namespace chever-redis redis-client --restart='Never'  --env REDIS_PASSWORD=$REDIS_PASSWORD  --image docker.io/bitnami/redis:7.0.12-debian-11-r19 --command -- sleep infinity

   Use the following command to attach to the pod:

   kubectl exec --tty -i redis-client \
   --namespace chever-redis -- bash

2. Connect using the Redis&reg; CLI:
   REDISCLI_AUTH="$REDIS_PASSWORD" redis-cli -h chever-redis-master
   REDISCLI_AUTH="$REDIS_PASSWORD" redis-cli -h chever-redis-replicas

To connect to your database from outside the cluster execute the following commands:

    kubectl port-forward --namespace chever-redis svc/chever-redis-master 6379:6379 &
    REDISCLI_AUTH="$REDIS_PASSWORD" redis-cli -h 127.0.0.1 -p 6379


密码：nILNRBb5th
nILNRBb5th