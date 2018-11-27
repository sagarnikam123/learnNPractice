# Building Container Images

################################################################################
# Step 1 - Base Images
# Creating a Dockerfile
FROM nginx:1.11-alpine
################################################################################
# Step 2 - Running Commands
COPY index.html /usr/share/nginx/html
################################################################################
# Step 3 - Exposing Ports
EXPOSE 80
################################################################################
# Step 4 - Default Commands
ENTRYPOINT ["nginx", "-g", "daemon off;"]
################################################################################
# Step 5 - Building Containers
docker build -t "swarga" .
docker images
################################################################################
# Step 6 - Launching New Image
docker run -d -p 80:80 swarga
# check the container is running
docker ps
# access the launched web server via the hostname docker
curl -i http://docker
################################################################################
