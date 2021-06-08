# What is a Container ?

###############################################################################
# Step 1 - Processes

# launch redis container
docker run -d --name=db redis:alpine
# check for redis-server process
ps aux | grep redis-server
# info about PID (Process ID) and PPID (Parent Process ID)
docker top db
# find PPID(likely to be containerd)
ps aux | grep 1080 # <ppid>
# list all of the sub processes
pstree -c -p -A $(pgrep dockerd)

# Process Directory

# list all the contents of /proc, and store the Redis PID for future use
DBPID=$(pgrep redis-server)
echo $DBPID
echo Redis is $DBPID
ls /proc
ls /proc/$DBPID
# you can view and update the environment variables defined to that process
cat /proc/$DBPID/environ
# check environment
docker exec -it db env
###############################################################################
# Step 2 - Namespaces

# available namespaces are:
# - Mount (mnt)
# - Process ID (pid)
# - Network (net)
# - Interprocess Communication (ipc)
# - UTS (hostnames)
# - User ID (user)
# - Control group (cgroup)

# Unshare can launch "contained" processes
unshare --help

sudo unshare --fork --pid --mount-proc bash
ps
exit

# What happens when we share a namespace?
# List all the namespaces
ls -lha /proc/$DBPID/ns/

# NSEnter is used to attach processes to existing Namespaces. Useful for debugging purposes.
nsenter --target $DBPID --mount --uts --ipc --net --pid ps aux
# namespaces can be shared using the syntax container:<container-name>
# connect nginx to the DB namespace
docker run -d --name=web --net=container:db nginx:alpine
WEBPID=$(pgrep nginx | tail -n1)
echo $WEBPID
echo nginx is $WEBPID
cat /proc/$WEBPID/cgroup
# While the net has been shared, it will still be listed as a namespace
ls -lha /proc/$WEBPID/ns/
# the net namespace for both processes points to the same location
ls -lha /proc/$WEBPID/ns/ | grep net
ls -lha /proc/$DBPID/ns/ | grep net
###############################################################################
# Step 3 - Chroot
###############################################################################
# Step 4 - Cgroups (Control Groups)

cat /proc/$DBPID/cgroup
ls /sys/fs/cgroup/

# What are the CPU stats for a process?
cat /sys/fs/cgroup/cpu,cpuacct/docker/$DBID/cpuacct.stat
# CPU shares limit 
cat /sys/fs/cgroup/cpu,cpuacct/docker/$DBID/cpu.shares
# all the Docker cgroups for the container's memory configuration
ls /sys/fs/cgroup/memory/docker/
# Each of the directory is grouped based on the container ID assigned by Docker
DBID=$(docker ps --no-trunc | grep 'db' | awk '{print $1}')
echo $DBID
WEBID=$(docker ps --no-trunc | grep 'nginx' | awk '{print $1}')
echo $WEBID
ls /sys/fs/cgroup/memory/docker/$DBID
ls /sys/fs/cgroup/memory/docker/$WEBID

# How to configure cgroups?
# container's memory limits
docker stats db --no-stream
#  memory quotes are stored in a file called memory.limit_in_bytes
cat /sys/fs/cgroup/memory/docker/$DBID/memory.limit_in_bytes
echo 8000000 > /sys/fs/cgroup/memory/docker/$DBID/memory.limit_in_bytes
cat /sys/fs/cgroup/memory/docker/$DBID/memory.limit_in_bytes
docker stats db --no-stream
###############################################################################
# Step 5 - Seccomp / AppArmor

# current AppArmor profile assigned to a process
cat /proc/$DBPID/attr/current
# Seccomp provides the ability to limit which system calls can be made
# status of SecComp is also defined within a file
cat /proc/$DBPID/status
# flag meaning are: 0: disabled     1: strict   2: filtering
cat /proc/$DBPID/status | grep Seccomp
###############################################################################
# Step 6 - Capabilities

# Capabilities are groupings about what a process or user has permission to do
cat /proc/$DBPID/status | grep ^Cap
# The flags are stored as a bitmask that can be decoded with capsh
capsh --decode=00000000a80425fb
###############################################################################