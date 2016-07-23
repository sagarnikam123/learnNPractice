# Granting Docker control to Non-root users

########################################################################
su root

# The docker daemon bydefault binds to a Unix socket (owned by root user) instead of a TCP port.
# which binds to /var/run/docker.sock & /var/run links to /run
# observe docker.sock
ls -l /run

# check group
cat /etc/group

# exit from root user
exit

# Check if error comes or not
docker run hello-world
docker run -it ubuntu /bin/bash

#Error thrown on Terminal
docker: Cannot connect to the Docker daemon. Is the docker daemon running on this host?.
See 'docker run --help'.

# if group not exists, add "docker" group
sudo groupadd docker

# check for "docker" group
# docker:x:131:
cat /etc/group

# adding user(e.g. quanta) to docker group
sudo gpasswd -a quanta docker

# or
sudo usermod -aG docker quanta

# removing user(e.g. quanta) from docker group
sudo gpasswd -d quanta docker

# deleting "docker" group from system
sudo delgroup docker

# check group again
cat /etc/group

# Try again (if not work then log off, "logout")
# you will get inside a container bash, type "exit" to come out of this
docker run -it ubuntu /bin/bash

########################################################################
