#!/bin/bash

set -e

while true; do
  for ns in $(kubectl get ns -o=jsonpath='{.items[*].metadata.name}'); do 
    echo "Pathching default service account on namespace $ns"
    kubectl patch sa default -n $ns -p '{"automountServiceAccountToken": false}'
  done
  echo "sleep for 1min"
  sleep 60
done