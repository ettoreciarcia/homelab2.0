# Fury Cluster in my homelab

## Reference

- Ettore Ciarcia <ettoreciarcia.tech@gmail.com>

## Index

- [Repository structure](#repository-structure)
- [Infrastructure](#infrastructure)
- [Infrastructure access](#infrastructure-access)
- [On premise](#on-premise)
- [Caveats - No, really, you MUST read this](#caveats-no-really-you-must-read-this)

## Repository structure

```bash
[TO DO]
```

## Infrastructure

### Dev

[TO DO]

## Infrastructure access

### Requirements

To interact with the infrastructure you'll need the following tools installed:

- Ansible >= 2.9.x
- Kubectl >= 1.21.x
- Kustomize >= 3.6.x
- Terraform >= 0.15.4
- AWS CLI >= 2.1.28
- [Furyctl](https://github.com/sighupio/furyctl/releases) >= 0.5.1
- (Optional) jq >= 1.6

### Repository Access

We use `git-crypt` to protect sensitive information inside the repository. In order to access those information, ask someone who already has access to do the following:

```bash
$ gpg --import <your_gpg_public_key>
$ git-crypt add-gpg-user --trusted <your_gpg_identity>
$ git push 
```

___


```bash
ansible-playbook ansible/playbooks/1.containerd.yaml -i hosts.yaml 
```
