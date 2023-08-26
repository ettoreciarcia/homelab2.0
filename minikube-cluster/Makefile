.PHONY: init delete apply-infra delete-infra apply-logging delete-logging apply-monitoring delete-monitoring
init-cluster:
	minikube start --vm-driver=parallels --kubernetes-version v1.25.0 --memory=4096m --cpus=2 --nodes=3
delete-cluster: 
	minikube delete
pause-cluster:
	minikube pause
unpause-cluster:
	minikube unpause
apply-logging:
	kustomize build manifests/infra | kubectl apply -f -
apply-monitoring: 
	kustomize build manifests/infra/monitoring | kubectl apply -f - --server-side --force-conflicts
delete-logging:
	kustomize build manifests/infra | kubectl delete -f -
delete-monitoring:
	kustomize build manifests/infra/monitoring | kubectl delete -f -
delete-infra: delete-logging delete-monitoring


