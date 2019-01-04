# Adding Docker Metadata & Labels

################################################################################
# Step 1 - Docker Containers
docker run -l user=12345 -d redis
echo 'user=123461' >> labels &&  echo 'role=cache' >> labels
cat labels
docker run --label-file=labels -d redis
################################################################################
# Step 2 - Docker Images
LABEL vendor=Katacoda \
com.katacoda.version=0.05 \
com.katacoda.build-date=2016-07-01T10:47:29Z \
com.katacoda.course=Docker
################################################################################
# Step 3 - Inspect
docker inspect rd
docker inspect -f "{{ json .Config.Labels }}" rd
docker inspect -f "{{ json .ContainerConfig.Labels }}" katacoda-label-example
################################################################################
# Step 4 - Query By Label
docker ps --filter "label=user=scrapbook"
docker images --filter "label=vendor=Katacoda"
################################################################################
# Step 5 - Daemon labels
# not working now on katacoda
docker -d \
  -H unix:///var/run/docker.sock \
  --label com.katacoda.environment="production" \
  --label com.katacoda.storage="ssd"
################################################################################
