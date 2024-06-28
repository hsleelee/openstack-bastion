
#openstack_adm_pwd = ""                 #  Opestanck  정보 확인 후 수정 필요
#openstack_api_url = "" #  Opestanck  정보 확인 후 수정 필요

# vm name
name = "bstn-host"

# os image 
image_source = {image_id="c6bb9bb8-bbaa-473a-a744-370293bfa35b",volume_id=""}

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
internal_public_key = ""

#Name of the internal network the bastion will sit in front of
internal_network_name = "datacentric_int" 

#ssh connection user name
ssh_user = "ubuntu"
