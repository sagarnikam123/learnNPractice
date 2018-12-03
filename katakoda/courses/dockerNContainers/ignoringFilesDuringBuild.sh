# Ignoring Files During Build

################################################################################
# Step 1 - Docker Ignore
cat Dockerfile
docker build -t password .
docker run password ls /app
echo passwords.txt >> .dockerignore
docker build -t nopassword .
docker run nopassword ls /app
################################################################################
# Step 2 - Docker Build Context
docker build -t large-file-context .
################################################################################
# Step 3 - Optimised Build
 echo big-temp-file.img >> .dockerignore
  docker build -t no-large-file-context .
################################################################################
