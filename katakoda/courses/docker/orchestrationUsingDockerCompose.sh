# Orchestration using Docker Compose

################################################################################
# Step 1 - Defining First Container
# docker-compose.yml
web:
  build: .
################################################################################
# Step 2 - Defining Settings
links:
  - redis

ports:
  - "3001"
  - "8000"
################################################################################
# Step 3 - Defining Second Container
redis:
  image: redis:alpine
  volumes:
    - /var/redis/data:/data
################################################################################
# Step 4 - Docker Up
 docker-compose up -d
################################################################################
# Step 5 - Docker Management
docker-compose ps
docker-compose logs
docker-compose
################################################################################
# Step 6 - Docker Scale
docker-compose scale web=3
docker-compose scale web=1
################################################################################
# Step 7 - Docker Stop
docker-compose stop
docker-compose rm
################################################################################
