
variable "openstack_adm_pwd" {
  description = "Openstack Admin Password"

}

variable "openstack_api_url" {
  description = "지역별로 구성된 Openstack api url"
  default     = ""
}

variable "name" {
  description = "Name of the vm"
  type        = string
  default     = ""
}

variable "image_source" {
  description = "Source of the vm's image"
  type = object({
    image_id  = string
    volume_id = string
  })
}

variable "flavor_name" {
  description = "ID or Name of the flavor the bastion will run on"
  type        = string
}

variable "network_port" {
  description = "Network port to assign to the node. Should be of type openstack_networking_port_v2"
  type        = any
}

variable "external_keypair_name" {
  description = "Name of the external keypair that will be used to ssh to the bastion"
  type        = string
}

variable "internal_private_key" {
  description = "Value of the private part of the ssh keypair that the bastion will use to ssh on instances"
  type        = string
}

variable "internal_public_key" {
  description = "Value of the public part of the ssh keypair that the bastion will use to ssh on instances"
  type        = string
}

variable "internal_network_name" {
  description = "Name of the internal network the bastion will sit in front of"
  type        = string
}

variable "ssh_user" {
  description = "User that will be used to ssh into the bastion"
  type        = string
  default     = "ubuntu"
}