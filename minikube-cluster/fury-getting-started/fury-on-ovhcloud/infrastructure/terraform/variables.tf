# Region

variable "region" {
  description = "Region"
  type        = string
}

# Network - Private Network

variable "network" {
  description = "Private Network Parameters"
  type = object({
    name = string
  })
}

# Network - Subnet

variable "subnet" {
  description = "Subnet parameters"
  type = object({
    name       = string
    cidr       = string
    dhcp_start = string
    dhcp_end   = string
  })
}

# Network - Router

variable "router" {
  description = "Router Parameters"
  type = object({
    name = string
  })
}

# Managed Kubernetes Cluster

variable "kube" {
  description = "Managed Kubernetes Cluster parameters"
  type = object({
    name            = string
    version         = optional(string)
    pv_network_name = string
    gateway_ip      = string
  })
}

variable "pool" {
  description = "Node Pool parameters"
  type = object({
    name          = string
    flavor        = string
    desired_nodes = string
    max_nodes     = string
    min_nodes     = string
  })
}

