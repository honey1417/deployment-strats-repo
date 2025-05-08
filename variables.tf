variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region where the resources will be created"
  type        = string  // Change to a region with sufficient quota
}

variable "zone" {
  description = "The region where the resources will be created"
  type        = string  // Change to a zone with sufficient quota
}

variable "cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the Kubernetes cluster"
  type        = number
}

variable "machine_type" {
  description = "The type of machine to use for nodes in the Kubernetes cluster"
  type        = string // Adjust based on the required machine type
}
