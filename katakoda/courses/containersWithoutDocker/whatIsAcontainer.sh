# What is a container ?

################################################################################
#  Step 1 - Processes
docker run -d --name db redis:alpine
ps aux | grep redis-server
docker top db
ps aux | grep <PPID> #Parent ProcessID
pstree -c -p -A $(pgrep dockerd)

DBPID=$(pgrep redis-server)
echo Redis is $DBPID
ls /proc

ls /proc/$DBPID
cat /proc/$DBPID/environ
docker exec -it db env
################################################################################
# Step 2 - Namespaces
unshare --help
sudo unshare --fork --pid --mount-proc bash
ps
exit

ls -lha /proc/$DBPID/ns/

nsenter --help
nsenter --target $DBPID --mount --uts --ipc --net --pid ps aux

docker run -d --name=web --net=container:db nginx:alpine
WEBPID=$(pgrep nginx | tail -n1)
echo nginx is $WEBPID

cat /proc/$WEBPID/cgroup
ls -lha /proc/$WEBPID/ns/

ls -lha /proc/$WEBPID/ns | grep net
ls -lha /proc/$DBPID/ns | grep net
################################################################################
