#!/bin/bash
#
# Curl to Digital Ocean API Destroy of Kubernetes Cluster

NULL="null"
CLUSTER_ID=`curl -X GET -H "Content-Type: application/json" -H "Authorization: Bearer ${DIGITAL_OCEAN_API_KEY}" "https://api.digitalocean.com/v2/kubernetes/clusters" | jq '.kubernetes_clusters[0].id' -r`

if [ "$CLUSTER_ID" = "$NULL" ]; then
    echo "No pre-existing kubernetes clusters exist. Proceeding to deploy first cluster..."
else
    echo "Pre-existing kubernetes cluster found. Destroying cluster before re-deployment..."
    curl -X DELETE -H "Content-Type: application/json" -H "Authorization: Bearer ${DIGITAL_OCEAN_API_KEY}" "https://api.digitalocean.com/v2/kubernetes/clusters/${CLUSTER_ID}"
fi