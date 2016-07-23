# Copying Images to other Hosts

################################################################################
# check docker Images
docker images

# run container with short lived command i.e. dettached mode
docker run ubuntu /bin/bash -c "echo 'cool content' > tmp/cool-file"

# checked running containers
docker ps -a

# create new images from changed container
# fridge is the name of newly created image
docker commit 138c645123be fridge

# commands used to create the image
docker history fridge

# exporting image in tar file
docker save -o /tmp/fridge.tar fridge
cp /tmp/fridge.tar $HOME/.

# view inside tar file
ls -lh /tmp/fridge.tar
tar -tf /tmp/fridge.tar

# Export .tar file to other machine
# import the image
docker load -i /tmp/fridge.tar

# check
docker images
docker run -it fridege /bin/bash
cat /tmp/cool-file

################################################################################
