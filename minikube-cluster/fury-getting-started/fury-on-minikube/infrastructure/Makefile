kubernetes-version?=v1.25.8
driver?=parallels
memory?=8192
cpu?=4
cni?=calico
nodes?=1

.PHONY: setup
setup: minikube addons

.PHONY: minikube
minikube:
	minikube start \
        --kubernetes-version $(kubernetes-version) \
        --driver $(driver) \
        --memory $(memory) \
        --cpus $(cpu) \
        --cni $(cni) \
        --nodes $(nodes) \
        --embed-certs 

.PHONY: addons
addons:
	minikube addons enable ingress

.PHONY: delete
delete:
	minikube delete 
