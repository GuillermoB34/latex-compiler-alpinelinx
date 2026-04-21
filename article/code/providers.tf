terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.53.0"
    }
  }
}
# Configurar el provider (o mejor con variables de entorno)
provider "openstack" {
}
