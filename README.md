# 모듈에 대하여 

이 패키지는 Openstack에서 배스천을 프로비저닝하기 위한 Terraform 모듈입니다.

프로비저닝된 요새는 사용자 정의가 가능하며(지금까지 발생한 사용 사례의 범위 내에서) 모듈은 프로비저닝하는 종속 리소스에 대해 보수적이므로 더 큰 유연성을 제공하기 위해 이러한 문제 중 많은 부분을 외부화합니다.

cloud-init 논리의 일부인 요새 프로비저닝 도커입니다.

# 사용법

## 변수 선언

모듈은 다음 변수를 입력으로 사용합니다.

- **name**: VM 인스턴스 이름
- **image_source**: 인스턴스 프로비저닝할 이미지의 소스입니다. 다음 키가 필요합니다(두 필드 중 하나만 사용해야 하며 다른 필드는 비어 있어야 합니다) :
  - **image_id**: 로컬 저장소가 있는 VM과 연결할 이미지의 ID
  - **volume_id**: VM과 연결할 OS가 포함된 볼륨의 ID
- **flavor_id**: ID of the image to provision the bastion on.
- **network_port**: Resource of type **openstack_networking_port_v2** to assign to the vm for network connectivity
- **external_keypair_name**: Name of the keypair that will be used to ssh to the bastion from outside the network
- **internal_private_key**: Value of the private part of the key the bastion will use to ssh on machines in the network
- **internal_public_key**: Value of the public part of the key the bastion will use to ssh on machines in the network
- **internal_network_name**: Name of the network the bastion will be connected to in order to enable sshing on machines in that network
- security_groups: List of security group names to assign to the bastion. Defaults to `["default]`
- **ssh_user**: User that will be used to ssh on the bastion from the outside. Defaults to **ubuntu**