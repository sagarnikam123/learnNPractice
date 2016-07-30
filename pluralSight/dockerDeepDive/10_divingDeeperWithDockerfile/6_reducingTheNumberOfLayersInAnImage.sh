# check no of layers creaed by pervious image
docker history webserver

# building smaller image
docker build -t "webserver-small" --file "DockerfileSmall" .

# check docker image sizes
docker images

# check how many layers
docker history webserver-small
