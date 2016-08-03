#build
docker build -t "ping-image" --file "DockerfileWrongCommand" .

# a image with no tag & no repository name, is last successfully build image
docker images

# use above unknow images, spin container & try that command
# which failed
