#####Install containerd.io on rockey 9.2 os 
#!/usr/bin/bash

###Install docker with all compnent check the hashed lines

#Update the system as per the latest available update packages in Rocky Linux 9
echo "Update the system as per the latest available update packages in Rocky Linux 9"
sudo dnf -y update
sudo dnf install -y yum-utils
#reboot

#Add docker official repo for rocky and centos
echo "Add docker official repo for rocky and centos"
dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo
dnf repolist

#Install docker compnents
echo "Install docker container.io"
sudo dnf -y install lsb-release gnupg apt-transport-https ca-certificates curl software-properties-common
dnf install -y docker-ce containerd.io
#dnf install -y docker-ce docker-ce-cli docker-buildx-plugin docker-compose-plugin

#Setting up docker service
echo "Enable docker service"
#systemctl enable docker
#systemctl start docker
#systemctl status docker

#Adding permissions to current user for docker, attempting to reload group membership
#sudo usermod -aG docker $USER
#newgrp docker

#Check example
#docker compose version
#docker pull httpd
#docker images

echo "Script finished"
