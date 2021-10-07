Let's begin by creating a new project called `myproject`:
```
oc new-project myproject
```{{execute}}
<br>

Now we copy/paste the memcached operator in the `myproject` namespace :
```
\cp /tmp/memcached_types.go api/v1alpha1/memcached_types.go
```{{execute}}


