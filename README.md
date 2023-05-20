# homelab 2.0

## Physical Server

This homelab was set up with old hardware collected over the years.


|  Name	|  IP	|  RAM	|  vCPU	| Disk Size | CPU Model	|  OS 	|
|---	|---	|---	|---	|---	|---	|---	|
| Gimli     |  192.168.0.2 |  4 GB  |  4 vCOU  |  250 GB   |  ARM Cortex-A72       |  Debian 11    | 
| Gandalf	|  192.168.0.10	|  8 GB	 |  8 vCPU	|  250 GB   |  i5 1135G7	        |  Proxmox 7.2  |
| Aragorn 	|  192.168.0.20	|  16 GB | 12 vCPU 	|  250 GB	|  AMD Ryzen 5 2600X	|  Proxmox 7.2	|
| Legolas	|  192.168.0.30	|  4 GB	 |  4 vCPU  |  250 GB	|  i5-3337U 	        |  Ubuntu 22.04	|


<br>

<p align="center">
    <img src="img/homelab-lotr.png"  width="500" height="700">
</p>

___

## Goals

For now the aim is to self-host a Kubernetes cluster on which I'm going to run an [online shop](https://github.com/GoogleCloudPlatform/microservices-demo) composed by 11 microservices.


I'm not going to just run that stuff on the cluster, I'm going to treat it like it's an actual project requested by a customer.

I thought of dividing the trip into the following phases:

1. Setup of Virtual Machines on Proxmox Cluster via Terraform
2. Kubernetes cluster setup via Kubespray
3. Setup of applications on the cluster with Helm/Kustomize
4. Application exposure with ingress controller
5. Setup CI/CD Pipeline self hosted/managed for our 11 microservices
5. Setup monitoring and Observability tools
7. Setup test environment
8. Merge test and dev environment on the same cluster to cut down management overhead
9. We are ready: production!
10. Upgrading a Kubernetes cluster in production

All these steps will become articles for my [blog](https://ettoreciarcia.com)!
___ 

## Collaboration

If you want to join me on this journey or you just want to have some RAM/CPU to play with your VMs in my homelab, feel free to contact me at ettoreciarcia.tech@gmail.com!

___

## Virtual Machines

### Coming soon :)


## Headscale

Ansible role for Headscale (Open Source version of Tailscale)

[Useful Link](https://techoverflow.net/2022/02/01/how-to-connect-tailscale-to-headscale-server-on-linux/)

1. On the headscale server:

```
sudo headscale namespace create <NAMESPACE>
```

2. Then, from nodes

```
curl -fsSL https://tailscale.com/install.sh | sh
```

```

sudo tailscale up --login-server=http://<YOUR_DOMAIN>:8080/
```

3. This will prompt a link on the node

```
	http://127.0.0.1:8080/register/nodekey:<xxx>

Success.

```

4. Visit this page from the server
```
curl http://127.0.0.1:8080/register/nodekey:<xxx>

```

5. You will find 

```
headscale -n NAMESPACE nodes register --key nodekey:<xxx>
```


Useful

```headscale nodes list```