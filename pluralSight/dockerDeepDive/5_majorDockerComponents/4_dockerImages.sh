# Docker images

########################################################################
# pull latest fedora image & login to interactive terminal bash
docker run -it fedora /bin/bash

# pull all images of fedora
docker pull -a fedora

# View all images associated with fedora only
docker images fedora
docker images ubuntu

# pull coreos/etcd
docker pull coreos/apache

# images stored locally under cd /var/lib/docker/<storage driver)
cd /var/lib/docker/aufs
# /var/lib/docker/aufs/layers

########################################################################
