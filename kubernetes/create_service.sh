#!/bin/bash

eval "$(cat local.env | sed 's/^/export /')"

envsubst < "kubernetes/service.yml" | kubectl apply -f -
