#!/bin/bash
echo 'Now setting up MyFace server on Azure!'
echo 'Your node name is' $1
knife azure server create --azure-dns-name $1 --azure-vm-name $1 --azure-vm-size Large -I b39f27a8b8c64d52b05eac6a62ebad85__Ubuntu-12_04_5-LTS-amd64-server-20140927-en-us-30GB --azure-service-location 'West US' --ssh-user awesome --ssh-password 'Awes0me1' -r 'role[myface-server]' --tcp-endpoints '80:80'