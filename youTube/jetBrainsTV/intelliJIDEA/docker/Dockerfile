# Use the OpenJDK 11 image as the base image
FROM openjdk:11

# Create a new app directory for my application files
RUN mkdir /app

# Copy the app files from hos tmachine to image filesystem
COPY out/production/docker/ /app

# Set the directory for executing future commands
WORKDIR /app

# Run the Main class
CMD java Main