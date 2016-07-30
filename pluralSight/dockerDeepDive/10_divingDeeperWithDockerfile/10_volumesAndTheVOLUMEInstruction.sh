# running container with specifying volume
docker run -it -v /test-vol --name "voltainer" ubuntu:15.04 /bin/bash

# check volume inside container
ls -l

# install nano
apt-get install -y nano

# write some random text into file
nano /test-vol/testfile

# go outside of container by
# Ctrl + p + q

# check docker
docker inspect voltainer
# check sections - "config" for "Volume" & "Mounts" for "Source"

# check for file
sudo ls -l /var/lib/docker/volumes/986d3dee13b90672e413f2b6fc199e488d062d5b241fbc7bffc0fedb16b2c329/_data
# print data inside file
sudo cat /var/lib/docker/volumes/986d3dee13b90672e413f2b6fc199e488d062d5b241fbc7bffc0fedb16b2c329/_data/testfile

# stops voltainer container
docker stop voltainer

#use this volume with other container
docker run -it  --volumes-from=voltainer ubuntu:15.04 /bin/bash

# check for file
ls -l /test-vol

# go outside of container by
# Ctrl + p + q

# go again inside docker container
docker exec -it elegant_lumiere bash

# check for file
ls -l /test-vol

# deleting volume of container
docker rm -v <containerID>

# stop container
docker stop elegant_lumiere
docker rm -v elegant_lumiere

# specifying local(host) volume directory to container at runtime
docker run -it -v /data:/data --name "localContainer" ubuntu:15.04 /bin/bash

cd /data
echo "file inside container - just checking" >> containerFile

# add any file & come ouside of container & search in host for that file
docker inspect localContainer
cat /data/containerFile
