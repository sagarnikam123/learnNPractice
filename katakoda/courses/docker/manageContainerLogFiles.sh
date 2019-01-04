# Manage Container Log Files

################################################################################
# Step 1 - Docker Logs
docker run -d --name redis-server redis
docker logs redis-server
################################################################################
# Step 2 - SysLog
docker run -d --name redis-syslog --log-driver=syslog redis
################################################################################
# Step 3 - Disable Logging
docker run -d --name redis-none --log-driver=none redis
docker inspect --format '{{ .HostConfig.LogConfig }}' redis-server
docker inspect --format '{{ .HostConfig.LogConfig }}' redis-syslog
docker inspect --format '{{ .HostConfig.LogConfig }}' redis-none
################################################################################
