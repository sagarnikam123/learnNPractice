# Load Balancing Containers

################################################################################
# Step 1 - NGINX Proxy
docker run -d -p 80:80 -e DEFAULT_HOST=proxy.example -v /var/run/docker.sock:/tmp/docker.sock:ro --name nginx jwilder/nginx-proxy
# 503 Service Temporarily Unavailable
curl http://docker
################################################################################
# Step 2 - Single Host
docker run -d -p 80 -e VIRTUAL_HOST=proxy.example katacoda/docker-http-server
curl http://docker
################################################################################
# Step 3 - Cluster
docker run -d -p 80 -e VIRTUAL_HOST=proxy.example katacoda/docker-http-server
curl http://docker
curl http://docker
################################################################################
# Step 4 - Generated NGINX Configuration
docker exec nginx cat /etc/nginx/conf.d/default.conf
docker logs nginx
################################################################################
