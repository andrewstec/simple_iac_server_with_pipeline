#!/bin/bash
#
# Configutes Kubectl with kubeconfig file

CLUSTER_ID=`curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer ${DIGITAL_OCEAN_API_KEY}" "https://api.digitalocean.com/v2/kubernetes/clusters" | jq '.kubernetes_clusters[0].id' -r`
KUBECONFIG=`curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer ${DIGITAL_OCEAN_API_KEY}" "https://api.digitalocean.com/v2/kubernetes/clusters/${CLUSTER_ID}/kubeconfig"`

mkdir -p ~/.kube

echo "${KUBECONFIG}" > ~/.kube/config