# to build images

# Note - first cmd will only run if folder has "Dockerfile" named file only
docker build -t "build1" --file "DockerfileHelloWorld" .
docker build -t "build2" -f "DockerfileHelloWorld" .
docker build -t "build3" --file "DockerfileHelloWorld" .

# to remove images
docker images
docker rmi build3 build2
docker images
