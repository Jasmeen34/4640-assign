resource "digitalocean_vpc" "web1_vpc" {
  name   = "web1"
  region = var.region
}
