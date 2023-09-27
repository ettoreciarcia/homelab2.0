.PHONY: init-cluster
init-cluster:
	minikube start --vm-driver=parallels --kubernetes-version v1.25.8 --memory=8192m --cpus=4

.PHONY: download-module
download-module:
	furyctl vendor -H

.PHONY: delete-cluster
delete-cluster: 
	minikube delete

.PHONY: pause-cluster
pause-cluster:
	minikube pause

.PHONY: unpause-cluster
unpause-cluster:
	minikube unpause

.PHONY: apply-infra
apply-infra:
	kustomize build manifests/infra | kubectl apply -f - --server-side --force-conflicts

.PHONY: delete-infra
delete-infra:
	kustomize build manifests/infra | kubectl delete -f -

.PHONY: setup
setup: init-cluster download-module apply-infra






