# Ensuring Container Uptime With Restart Policies

################################################################################
# Step 1 - Stop On Fail
docker run -d --name restart-default scrapbook/docker-restart-example
docker container ps -a
docker logs restart-default
################################################################################
# Step 2 - Restart On Fail
docker run -d --name restart-3 --restart=on-failure:3 scrapbook/docker-restart-example
docker logs restart-3
################################################################################
# Step 3 - Always Restart
docker run -d --name restart-always --restart=always scrapbook/docker-restart-example
docker logs restart-always
################################################################################
