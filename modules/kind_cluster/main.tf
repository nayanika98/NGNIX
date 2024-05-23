resource "kind_cluster" "k8s" {
    name = var.cluster_name
    wait_for_ready = true
    node_image = "kindest/node:v1.30.0"
    # kubeconfig_path = "~/.kube/config"

    kind_config {
        kind        = "Cluster"
        api_version = "kind.x-k8s.io/v1alpha4"

        node {
            role = "control-plane"

            kubeadm_config_patches = [
                "kind: InitConfiguration\nnodeRegistration:\n  kubeletExtraArgs:\n    node-labels: \"ingress-ready=true\"\n"
            ]

            extra_port_mappings {
                container_port = 80
                host_port      = 80
            }
            extra_port_mappings {
                container_port = 443
                host_port      = 443
            }
        }

        # dynamic "node" {
        #     for_each = range(var.worker_count)

        #     content {
        #         role = "worker"
        #     }
        # }

       

        dynamic "node" {
            for_each = range(var.worker_count)

            content {
                role = "worker"
                 kubeadm_config_patches = [
                    yamlencode({
                     kind             = "JoinConfiguration"
                     nodeRegistration = {
                       kubeletExtraArgs = {
                         system-reserved : "memory=1Gi,cpu=1"
              }
            }
          })
        ]
            }
        }
    }
}
