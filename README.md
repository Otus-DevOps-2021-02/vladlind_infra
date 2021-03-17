# vladlind_infra
vladlind Infra repository

1) SSH to internalhost via machine with public IP as JumpHost:

# ssh -i vladlind_devops -J  vladlind@178.154.206.113 vladlind@10.130.0.27

2) The same with "ssh someinternalhost":

In ~/.ssh/config file add following:

# Host someinternalhost
#        HostName 10.130.0.27
#        ProxyJump vladlind@178.154.206.113
#        User vladlind
#        IdentityFIle ~/.ssh/vladlind_devops
