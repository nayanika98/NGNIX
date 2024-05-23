variable "ingress_namespace" {
  description = "Namespace for the nginx ingress controller deployment"
  type        = string
  default     = "default"
}

variable "ngnix_server_namespcae" {
  description = "Namespace for the nginx server deployment"
  type        = string
  default     = "default" 
}