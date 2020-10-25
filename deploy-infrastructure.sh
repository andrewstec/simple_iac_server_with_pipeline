#!/bin/bash
#
# Curl to Digital Ocean API Deployment of Kubernetes Cluster

curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer ${DIGITAL_OCEAN_API_KEY}" -d '{"name": "simple-nginx-cluster","region": "nyc1","version": "1.18","tags": ["cgi", "simple-iac-server-with-pipeline"],"node_pools": [{"size": "s-1vcpu-2gb","count": 1,"name": "nginx-pool","tags": ["nginx", "cgi"],"labels": {"service": "cgi", "priority": "high"}}]}' "https://api.digitalocean.com/v2/kubernetes/clusters" 

sleep 2s
