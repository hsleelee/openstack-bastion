
#openstack_adm_pwd = ""                 #  Opestanck  정보 확인 후 수정 필요
#openstack_api_url = "" #  Opestanck  정보 확인 후 수정 필요

# vm name
name = "bstn01.datacentric.dev"

# os image 
image_source = {image_id="67ccb087-dcda-4067-98b1-cac7fa1ad0ea",volume_id="d3f8fc14-d2f3-469b-bb05-de207c088524"}

#ID of the flavor the bastion will run on or name
flavor_id = "ca295cf2-64aa-4adf-b5b2-75e8b581f99b"
#flavor_name = ""

#Network port to assign to the node. Should be of type openstack_networking_port_v2
network_port =  {
    id          = "a0fd76a8-5a65-46e1-9579-7221276cd321"
    subnet_id   = "5416e561-e2f3-4a7b-a1fa-f66522aa9612"
  }

#Name of the external keypair that will be used to ssh to the bastion
external_keypair_name = "datacentric_adm_key" 

#Value of the private part of the ssh keypair that the bastion will use to ssh on instances
internal_private_key = ""

#Value of the public part of the ssh keypair that the bastion will use to ssh on instances
internal_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCZUolyfCUwG/Xf2keA/Wx+mWy4SGHFOUyexneoaLTAo2YZl/UzbIhcG2xVbuAwUE2Lp0aLPgCUd74uzNa7rcAU6vMxMuFjakIVbR9JGhm6cZY7QwiwI9Sk3A2SeXB1imppp/bd19h3XbJAXh2VLGbouhjWNA2ZYqvQoxr9NUOAAbhrLbXeYNG74ZuqhhomD5B6aYzvmxU3xikSjcKUuyzOnyznkgKS9krKNAHioi7vtTEZYx6/M3YWAPBfJzs4mtkiFTnJsUSaS4pvIFbAUNaT/iXJTyalWWyUHlXFIeqNMzgCAx3yliniWe302PmXWI/ODUA5Hqdu1hK/9+2yIQkT Generated-by-Nova"

#Name of the internal network the bastion will sit in front of
internal_network_name = "datacentric_int" 

#ssh connection user name
ssh_user = "ubuntu"
