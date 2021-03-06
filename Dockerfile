FROM nginx:alpine

EXPOSE 80
EXPOSE 443

COPY hello-world.index.html /usr/share/nginx/html/index.html

## May need nginx ingress for kubernetes
# Issue: https://www.digitalocean.com/community/questions/use-load-balancer-with-let-s-encrypt-in-digitalocean-kubernetes
# Maybe: https://kubernetes.github.io/ingress-nginx/deploy/#digital-ocean
# Maybe: https://cert-manager.io/docs/
# COPY install-letsencrypt.sh /.install-letsencrypt.sh