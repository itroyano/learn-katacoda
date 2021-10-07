Let's begin by creating a new project called `myproject`:
Let scalfold a memcached operator in the `myproject` namespace: 

```
oc new-project myproject
mkdir -p $HOME/projects/memcached-operator
cd $HOME/projects/memcached-operator
operator-sdk init --domain example.com --repo github.com/example/memcached-operator
operator-sdk create api --group cache --version v1alpha1 --kind Memcached --resource --controller
```{{execute}}
<br>
