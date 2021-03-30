# Solution

## Prerequisites

1. Minikube is installed
2. Helm is installed
3. kubectl is installed

## Run

```bash
$ ./run.sh
```

1. `run.sh` will start minikube with a 3 node eks cluster.
2. It will deploy manifest.yaml into the cluster which deploys all the kubernetes objects as per requirements.
3. It will also deploy prometheus and grafana using helm.
4. Will create alert for cpu usage.
