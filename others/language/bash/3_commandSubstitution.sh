# 3_Command Substitution-Can you return data instead of exit codes in Bash

################################################################################
touch version.sh
chmod +x version.sh
./version.sh
################################################################################
# command substition - $(command)
# it run & catchs return value/stdout
echo "the current version of foo is $(get_latest_version)"

OLDEST=$(get_oldest_version)
echo "the older version of foo is $OLDEST"
################################################################################
# another example
docker run -d node sleep 10000
docker run -d golang sleep 10000

docker ps # running containers
docker ps -q # running container ids

# kill all docker running containers
docker rm -f $(docker ps -q)
docker ps
################################################################################