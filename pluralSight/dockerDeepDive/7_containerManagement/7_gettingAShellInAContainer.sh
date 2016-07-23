# Getting a Shell in a container

################################################################################
# 3 ways

#1st way
# when "docker attach" & "ssh" not available or not working
# "nsenter" (ns=namespace, enter) allows us to enter "Namespaces"
# requires container PID (gets from "docker inspect")
docker inspect 5056adbd8a07 | grep Pid

# using "nscenter" (munpit) to enter namespace of container
nsenter -m -u -n -p -i -t 8167 /bin/bash

# inside container
hostname
ip a
exit # will not stops container

# 2nd way
# using "docker-enter"
docker-enter 476032d928ef

# if nsenter & docker-enter not installed, installed it using docker
docker run -v /usr/local/bin:/target jpetazzo/nsenter

# 3rd way
# using "exec"
docker exec -it 476032d928ef /bin/bash

################################################################################
