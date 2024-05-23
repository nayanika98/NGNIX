
resource "helm_release" "nginx-ingress" {
  name       = "nginx-ingress" 
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "4.0.10" 
  namespace  = var.ingress_namespace
  create_namespace = true

  set {
    name  = "controller.service.type"
    value = "NodePort"
  }
}

resource "helm_release" "nginx" {
  name       = "nginx"
  repository = "https://charts.bitnami.com/bitnami"
  chart      = "nginx"
  version    = "13.2.30"
  namespace  = var.ngnix_server_namespcae
  values = [  
    <<EOF
replicaCount: 1
service:
  type: NodePort
  nodePorts:
    http: 30080 
ingress:
  enabled: true
  className: "ngnix"
  hosts:
    - host : ngnix.local
      path: /
      pathType: Prefix
      backend:
        service:
          name: ngnix
          port:
            number: 80
EOF
  ]
}
