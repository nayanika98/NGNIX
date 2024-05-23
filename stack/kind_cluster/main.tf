module "kind_cluster" {
  source = "../../modules/kind_cluster"
}
output "cluster_values" {
  value = module.kind_cluster.cluster_values
}
