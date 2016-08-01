# build new docker image
docker build -t "apache-img" --file="DockerfileWebserver" .
docker images

# spin container with exposing port
# machine port : container port
docker run -d -p 5001:80 --name=web1 apache-img
docker ps

# open in browser
http://0.0.0.0:5001/
 #or
localhost:5001
