# spin a container using net-img image
docker run -it --name="net2" net-img

# find detailed info for running container
# find "NetworkSettings" section
docker inspect net2


# find other config files
su
ls -l /var/lib/docker/containers/0efd12fe443f9e4e2c20c61b55c3cc04e2992bf28a1801231e047e7d7a2f6775/

# compare both container's & machine's resolve.conf files
cat /var/lib/docker/containers/0efd12fe443f9e4e2c20c61b55c3cc04e2992bf28a1801231e047e7d7a2f6775/resolv.conf
cat /etc/resolv.conf

# compare hosts files
cat /var/lib/docker/containers/0efd12fe443f9e4e2c20c61b55c3cc04e2992bf28a1801231e047e7d7a2f6775/hosts
cat /etc/hosts

# run container with cutomized dns name & check
docker run --dns=8.8.4.4 --name=dnstest net-img
docker inspect dnstest
# or
cat /var/lib/docker/containers/0ada3a628b5ace7d9443df020ede1763861c69f710f4974dc16e586342c65664/resolv.conf
