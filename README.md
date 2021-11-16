# Learn kubernetes

### Local kubernetes cluster
This repo uses [kind](https://kind.sigs.k8s.io/) for the local cluster.

Create the local cluster.
```sh
make create-cluster
```

Disable restarting the cluster automatically.
```sh
docker update --restart=no kind-control-plane
```

Stop the cluster.
```sh
docker stop kind-control-plane
```

Restart the cluster.
```sh
docker start kind-control-plane
```

### Kubernetes Dashboard

Install dashboard.
```sh
make install-dashboard
```

Open a new terminal and start proxy.
```sh
kubectl proxy
```

After running the proxy, you can access the dashboard at the following URL:
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

Get access token.
```sh
cd kind/dashboard
./get_token.sh
```
