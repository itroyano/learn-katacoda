Operator with webhook
Two types of admission webhooks can be added to the operator using the oeprator-sdk : validating and mutating. Validating webhook is used to only accept or reject the incoming CR based on some validation logic while the mutating webhook is used to amke changes to the incoming CR.

For the operator code, add a webhook by running the following command :

```
operator-sdk create webhook --group cache --version v1 --kind Memcached --defaulting --programmatic-validation
```{{execute}}

Here the "--defaulting" option adds a provision for mutating webhook while "--programmatic-validation" adds code for a validation webhook.

