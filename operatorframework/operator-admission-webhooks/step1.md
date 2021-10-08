
Navigate to the directory where memcached operator is already built for you:

```
cd $HOME/projects/memcached-operator
```{{execute}}
<br>

Deploy your Memcached Custom Resource Definition to the live OpenShift Cluster:
```
oc apply -f config/crd/bases/cache.example.com_memcacheds.yaml
```{{execute}}
<br>

