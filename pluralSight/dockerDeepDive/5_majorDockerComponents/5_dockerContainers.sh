# Docker Containers

########################################################################
# Container(run-time construct) - running instances of image(build-time construct)
docker run -it ubuntu /bin/bash

# -i - interactive
# -t - attached to sudo tty(TeleTYpewriter)
# ubuntu - from which images to create Container
# /bin/bash - which process/apps to run ( u can specify apache, redis, etc.)

# checked running docker Container
docker ps

# list all running container from start
docker ps -a

# starting a stopped container
docker start 5056adbd8a07

# attached to terminal of running terminal
# docker attach 5056adbd8a07 # not working from Docker 1.3
docker exec -it 5056adbd8a07 bash
docker exec -it 5056 /bin/bash # shortcut

#inside fedora images
pstree # pstree not installed
man # not installed
iostat # not installed

#Exit running container without stopping it
Ctrl + p + q

########################################################################
