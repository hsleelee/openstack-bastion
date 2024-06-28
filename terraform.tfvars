
#openstack_adm_pwd = ""                 #  Opestanck  정보 확인 후 수정 필요
#openstack_api_url = "" #  Opestanck  정보 확인 후 수정 필요

# vm name
name = "bstn01.datacentric.dev"

# os image 
image_source = {image_id="67ccb087-dcda-4067-98b1-cac7fa1ad0ea",volume_id="d3f8fc14-d2f3-469b-bb05-de207c088524"}

#ID of the flavor the bastion will run on or name
#flavor_id = "ca295cf2-64aa-4adf-b5b2-75e8b581f99b"
flavor_name = "4-8-100"

#Network port to assign to the node. Should be of type openstack_networking_port_v2
network_port =  {
    id          = "a0fd76a8-5a65-46e1-9579-7221276cd321"
    subnet_id   = "5416e561-e2f3-4a7b-a1fa-f66522aa9612"
  }

#Name of the external keypair that will be used to ssh to the bastion
external_keypair_name = "datacentric_adm_key" 

#Value of the private part of the ssh keypair that the bastion will use to ssh on instances
internal_private_key = "-----BEGIN RSA PRIVATE KEY-----\nMIIEpAIBAAKCAQEAmVKJcnwlMBv139pHgP1sfplsuEhhxTlMnsZ3qGi0wKNmGZf1\nM2yIXBtsVW7gMFBNi6dGiz4AlHe+LszWu63AFOrzMTLhY2pCFW0fSRoZunGWO0MI\nsCPUpNwNknlwdYpqaaf23dfYd12yQF4dlSxm6LoY1jQNmWKr0KMaTVDgAG4ay21\n3mDRu+GbqoYaJg+QemmM75sVN8YpEo3ClLsszp8s55ICkvZKyjQB4qIu77UxGWMe\nvzN2FgDwXyc7OJrZIhU5ybFEmkuKbyBWwFDWk4lyU8mpVlslB5VxSHqjTM4AgMd\n8pYp4lnt9Nj5l1iPzg1AOR6nbtYSvftsiEJEwIDAQABAoIBAATVV0Pmqf10RDIE\nXZCxbIQpLgY5MevXvJScyRTkCB6yhtykOZIG5xbuPSQhDzBq1Alu9GT6MzFYZd0\nGajc91sxdO0uH3DU3rRyNjRFwF3iSswfdtympIN19G+TqHnsHSKritqfTF2ILJq\nxR4wF3B0BqglXUqaSQwoB8vWKtmVfSmsnvaMl2SA4JK14WNV586uwjAbyZ+qhXU\nT5NcrVTjBHSMjbtR3fT+u2PNmfVxDt4CN0ATZiQA6TFGz8vVLIsCCqzqTg8Yrc\n82PH2Hr+tgD0graLwW29GwNhNSphbM3EZVVkfXUVYfUHiWgcZgB7LhVSWMOgGPg\nHJAwYQECgYEA1hDstreyMIM2ikDAM1JFblnuyXh5cJh8iTXoEs6vjmxX8FDV4tg\nON8vl1XC0mt0pHZXGylpCuZPqH7p4pr7cO4SaLmgyz8sqmDJd5kYBWY0lxuxvHg\ns0S7E9DDJdzwshrqxS7DHJfE8OANlVwszcPhNZrV5H29wPTYsD4AFMCgYEAt1tp\nf7PbNfFEd7zBz4+9bInteYyPrVaOtUgxWT6hFPiqYqkaPhIs1xXGFSZet5wH3Ez\nn9UWrIEGwPayz8gtLQkMMSBwy4+52YfYY5hqUvN3yezvx6fEEJAP127neSXAjN4\nl5ILVb7uVQ+0pZdrRduyjUI8JPJyIqCShXPkvEECgYAW5aSMPsXejops61QjqS8o\nCJKUFkGH7+zOG8a8rI9RZXNajyrxoq6SpUqmMH9hp55PaYPyuvMMdgfILD7FPs\n1mo9rW1XkDaVXbBbgpg19tlr1ts6iHDCfU1QXYIMfL6zHQD3QbZoNGubD5RNO4Jc\niQ0t5kmBCmniLhSUQZPFZQKBgQCNMSUiIztwZJB3EHmQYExXImMV3TdftoLOvwPH\nPSTz9SybZZmJA3foNfkTUUIGrXclnyQjthEJsSmkOdQj0H+JKGhtBBAXkIuKiOMG\nfn2Rds4Nfhh+ZBEqUqpmEtCrOGDGDiWuu1jj+0zLy7qPJlsZ+ssf46U3OUq6P8r\nKL1AgQKBgQCKd4ikNjyTjvNvTbegdeD6aCGBqwboWDz5ahPfnZu1x2yhi0Mj7z3c\nSWElIIu94QDfjGgf7aWquZhp1s0or5IVPs8fXCCb5SDeBPIeAowtVl6bzqwym6\ndZmrQ52PWmpCefRmHl8vGnMZL7lGiieowISbmrf2kxuI0WPhf8OQ==\n-----END RSA PRIVATE KEY-----\n"

#Value of the public part of the ssh keypair that the bastion will use to ssh on instances
internal_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCZUolyfCUwG/Xf2keA/Wx+mWy4SGHFOUyexneoaLTAo2YZl/UzbIhcG2xVbuAwUE2Lp0aLPgCUd74uzNa7rcAU6vMxMuFjakIVbR9JGhm6cZY7QwiwI9Sk3A2SeXB1imppp/bd19h3XbJAXh2VLGbouhjWNA2ZYqvQoxr9NUOAAbhrLbXeYNG74ZuqhhomD5B6aYzvmxU3xikSjcKUuyzOnyznkgKS9krKNAHioi7vtTEZYx6/M3YWAPBfJzs4mtkiFTnJsUSaS4pvIFbAUNaT/iXJTyalWWyUHlXFIeqNMzgCAx3yliniWe302PmXWI/ODUA5Hqdu1hK/9+2yIQkT Generated-by-Nova"

#Name of the internal network the bastion will sit in front of
internal_network_name = "datacentric_int" 

#ssh connection user name
ssh_user = "ubuntu"
