variable "cluster_name" {
  description = "Name of the Kind cluster"
  type        = string
  default     = "local-cluster"
}

variable "worker_count" {
  description = "No. of worker nooded needed"
  type        = number
  default     = 1
}


