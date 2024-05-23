output "ngnix_contoller" {
  value = helm_release.nginx-ingress
}
output "ngnix_server" {
  value = helm_release.nginx
}
