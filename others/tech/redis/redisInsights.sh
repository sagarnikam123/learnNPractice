

# https://www.youtube.com/watch?v=VqPdHngkz1I
# using - play with docker
# spin up 2 instances & run on each one

# run redis
docker run --net=host -d -p 6379:6379 redis
nerdctl run --net=host -d -p 6379:6379 redis
nerdctl run --net=host -d -p 9001:6379 redis

# run redismod
docker run --net=host -d -p 6379:6379 redislabs/redismod
nerdctl run --net=host -d -p 6379:6379 redislabs/redismod

# other installation
apk add redis # adding redis-cli
pip3 install click redis

# run redisInsight
docker run -d -v redisinsight:/db -p 8001:8001 --net=host redislabs/redisinsight:latest
nerdctl run -d -v redisinsight:/db -p 8001:8001 --net=host redislabs/redisinsight:latest
# http://localhost:8001

# import redis data
cd /Users/sagar/Documents/git
git clone https://github.com/redis-developer/redis-datasets
cd redis-datasets/user-database

# Importing the user database:
redis-cli -h localhost -p 6379 < ./import_users.redis
redis-cli -h localhost -p 6379 < $GIT_HOME/redis-datasets/user-database/import_users.redis
redis-cli -h 192.168.0.28 -p 6379 < ./import_users.redis

# To Delete all data/keys of all Redis databases
./redis-cli -h localhost -p 6379 FLUSHALL

# SSH
docker exec -it <container name> /bin/bash
nerdctl exec -it <container name> /bin/bash
