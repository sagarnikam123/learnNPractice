# Dockerizing Node.js applications

################################################################################
# Step 1 - Base Image
FROM node:10-alpine
RUN mkdir -p /src/app
WORKDIR /src/app
################################################################################
# Step 2 - NPM Install
COPY package.json /src/app/package.json
RUN npm install
# don't want to use the cache as part of the build
# then set the option --no-cache=true as part of the docker build command.
################################################################################
# Step 3 - Configuring Application
COPY . /src/app
EXPOSE 3000
CMD ["npm", "start"]
################################################################################
# Step 4 - Building & Launching Container
# Build
docker build -t my-nodejs-app .
# Launch
docker run -d --name my-running-app -p 3000:3000 my-nodejs-app
# Testing Container
curl http://docker:3000
################################################################################
# Step 5 - Environment Variables
# environment variables can be defined when you launch the container
# Using -e option, you can set the name and value as -e NODE_ENV=production
docker run -d --name my-production-running-app -e NODE_ENV=production -p 3000:3000 my-nodejs-app  
################################################################################
