# Optimising Dockerfile with OnBuild

################################################################################
# Step 1 - OnBuild

# While Dockerfile's are executed in order from top to bottom, you can trigger
# an instruction to be executed at a later time when the image is used
# as the base for another image.

FROM node:7
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install
ONBUILD COPY . /usr/src/app
CMD [ "npm", "start"]
################################################################################
# Step 2 - Application Dockerfile
FROM node:7-onbuild
EXPOSE 3000
################################################################################
# Step 3 - Building & Launching Container
docker build -t my-nodejs-app .
docker run -d --name my-running-app -p 3000:3000 my-nodejs-app
curl http://docker:3000
################################################################################
