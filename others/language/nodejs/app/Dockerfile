FROM phusion/passenger-nodejs

# Create webapp working directory
WORKDIR /home/app/webapp

# copy pkg & server files to working directory
COPY --chown=app:app . .

# Install app dependencies
RUN npm install --only=production

# expose port for nodejs app
EXPOSE 8080

# command on every container start
CMD [ "npm", "start" ]
