In a new terminal, inspect the Custom Resource manifest:

```
cd $HOME/projects/memcached-operator
cat config/samples/cache_v1alpha1_memcached.yaml
```{{execute}}
<br>
Ensure your `kind: Memcached` Custom Resource (CR) is updated with `spec.size`

<pre class="file">
apiVersion: cache.example.com/v1alpha1
kind: Memcached
metadata:
  name: memcached-sample
spec:
  size: 1
</pre>

Ensure you are currently scoped to the `myproject` Namespace:

```
oc project myproject
```{{execute}}
<br>
Deploy your PodSet Custom Resource to the live OpenShift Cluster:

```
oc create -f config/samples/cache_v1alpha1_memcached.yaml
```{{execute}}
<br>
Verify the memcached exists:

```
oc get memcached
```{{execute}}
<br>
Verify the Memcached operator has created 1 pods:

```
oc get pods
```{{execute}}
<br>

This marks the end of the basic operator setup.

You can delete the deployed operator, CR and CRD by

```
kubectl delete -f config/samples/cache_v1alpha1_memcached.yaml
```{{execute}}
<br>

```
kustomize build config/default | kubectl delete -f -
```{{execute}}



Increase the number of replicas owned by the Memcached:

```
oc patch memcached memcached-sample --type='json' -p '[{"op": "replace", "path": "/spec/size", "value":5}]'
```{{execute}}
<br>

Verify that we now have 5 running pods
```
oc get pods
```{{execute}}
