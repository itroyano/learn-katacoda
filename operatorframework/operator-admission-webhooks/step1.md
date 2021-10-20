
The Memcached Operator is already built with spec.size in the custom resource.

Navigate to the memcached operator directory:

```
cd $HOME/projects/memcached-operator
```{{execute}}
<br>


Deploy your Memcached Custom Resource Definition to the live OpenShift Cluster:
```
oc apply -f config/crd/bases/cache.example.com_memcacheds.yaml
```{{execute}}
<br>

Once the CRD is registered, we will run the Operator as a Go program outside the cluster using Operator-SDK and our `kubeconfig` credentials

Once running, the command will block the current session. You can continue interacting with the OpenShift cluster by opening a new terminal window. You can quit the session by pressing `CTRL + C`.

```
WATCH_NAMESPACE=myproject make run
```{{execute}}
