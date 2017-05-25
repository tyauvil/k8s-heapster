# k8s-Heapster

Deploys Heapster monitoring for Kubernetes to send cluster metrics to InfluxDB

Steps to run:

1. create a local.env file with password for writing user:
INFLUX_PASSWORD
2. deploy with Makefile once per environment:

`make dev-deploy`

#### Retention policy issues
[https://github.com/kubernetes/heapster/issues/1143](https://github.com/kubernetes/heapster/issues/1143)
