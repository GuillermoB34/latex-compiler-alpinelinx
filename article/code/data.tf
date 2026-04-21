data "openstack_networking_network_v2" "existing_network" {
  name = "external-network"
}


data "openstack_networking_secgroup_v2" "existing_secgroup" {
  name = "default"
}


data "openstack_images_image_v2" "debian" {
  name = "debian-12"
}

data "openstack_compute_flavor_v2" "labs" {
  name = "labs"
}

