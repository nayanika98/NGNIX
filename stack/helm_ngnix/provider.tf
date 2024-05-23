provider "kubernetes" {
  config_path    = "/Users/nayanikapramanik/Desktop/ngnix/stack/kind_cluster/local-cluster-config" 
  config_context = "kind-local-cluster"       # Context for your kind cluster
}

provider "helm" {
  kubernetes {
    config_path    = "/Users/nayanikapramanik/Desktop/ngnix/stack/kind_cluster/local-cluster-config"
    config_context = "kind-local-cluster"
  }
}