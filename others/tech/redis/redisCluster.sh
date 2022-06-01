# redis cluster using local docker

cd /Users/sagar/Documents/work/code/redisInsight
# create network - user default -> host
docker network create redis_cluster
docker network ls

# redis_x.conf
# nodes.conf is created and managed automatically
port 6379
cluster-enabled yes
cluster-config-file nodes.conf
cluster-node-timeout 15000
appendonly yes

touch redis_7001.conf redis_7002.conf redis_7003.conf redis_7004.conf redis_7005.conf redis_7006.conf

# stop all running containers
nerdctl stop $(nerdctl ps -a -q)

nerdctl rm $(nerdctl ps -a -q)
# remove all stopped containers


# create redis containers
cd /Users/sagar/Documents/work/code/redisInsight/conf

redis_7002.conf redis_7003.conf redis_7004.conf redis_7005.conf redis_7006.conf

docker run -d -v redis_7001.conf:/usr/local/etc/redis/redis.conf \
--name redis_1 --net host redis redis-server /usr/local/etc/redis/redis.conf

# redis_9001
nerdctl run -d -v redis_9001.conf:/usr/local/etc/redis/redis.conf \
--name redis_9001 --net host redis redis-server /usr/local/etc/redis/redis.conf

# redis_9002
nerdctl run -d -v redis_9002.conf:/usr/local/etc/redis/redis.conf \
--name redis_9002 --net host redis redis-server /usr/local/etc/redis/redis.conf

# redis_9003
nerdctl run -d -v redis_9003.conf:/usr/local/etc/redis/redis.conf redis redis-server /usr/local/etc/redis/redis.conf

# redis_9004
nerdctl run -d -v redis_9004.conf:/usr/local/etc/redis/redis.conf \
--name redis_9004 --net host redis redis-server /usr/local/etc/redis/redis.conf

# redis_9005
nerdctl run -d -v redis_9005.conf:/usr/local/etc/redis/redis.conf \
--name redis_9005 --net host redis redis-server /usr/local/etc/redis/redis.conf

# redis_9006
nerdctl run -d -v redis_9006.conf:/usr/local/etc/redis/redis.conf \
--name redis_9006 --net host redis redis-server /usr/local/etc/redis/redis.conf

nerdctl run -d -v conf/redis_9002.conf:/usr/local/etc/redis/redis.conf redis redis-server /usr/local/etc/redis/redis.conf

# container IP addresses
docker inspect -f '{{ (index .NetworkSettings.Networks "redis_cluster").IPAddress }}' redis_1
