## Install Online Boutique charts

```
helm upgrade onlineboutique oci://us-docker.pkg.dev/online-boutique-ci/charts/onlineboutique \
    --install -n online-boutique
```

## Expose the frontend

```
minikube tunnel
```