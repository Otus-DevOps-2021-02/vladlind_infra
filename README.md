# vladlind_infra
vladlind Infra repository

1) SSH to internalhost via machine with public IP as JumpHost:

 ssh -i vladlind_devops -J  vladlind@178.154.206.113 vladlind@10.130.0.27

2) The same with "ssh someinternalhost":

In ~/.ssh/config file add following:

 Host someinternalhost
        HostName 10.130.0.27
        ProxyJump vladlind@178.154.206.113
        User vladlind
        IdentityFIle ~/.ssh/vladlind_devops

bastion_IP = 178.154.206.113
someinternalhost_IP = 10.130.0.27

testapp_IP = 178.154.200.216
testapp_port = 9292

yc compute instance create   --name reddit-app   --hostname reddit-app   --memory=4   --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB   --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4   --metadata serial-port-enable=1   --ssh-key ~/.ssh/vladlind_devops.pub   --metadata-from-file startup-script=./startup_script.sh
