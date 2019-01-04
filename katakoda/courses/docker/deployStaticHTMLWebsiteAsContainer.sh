# Deploy Static HTML Website as Container

################################################################################
# Step 1 - Create Dockerfile
# first line defines our base image. The second line copies the content of
# the current directory into a particular location inside the container.
FROM nginx:alpine
COPY . /usr/share/nginx/html
################################################################################
# Step 2 - Build Docker Image
# Build our static HTML image using the build command
docker build -t webserver-image:v1 .
# list of all the images on the host
docker images
################################################################################
# Step 3 - Run
# friendly name and tag. As it's a web server, bind port 80 to our host using the -p parameter
docker run -d -p 80:80 webserver-image:v1
# access the results of port 80
curl docker
################################################################################
