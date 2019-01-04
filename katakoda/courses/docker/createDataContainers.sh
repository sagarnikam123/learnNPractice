# Create Data Containers

################################################################################
# Step 1 - Create Container
docker create -v /config --name dataContainer busybox
################################################################################
# Step 2 - Copy Files
docker cp config.conf dataContainer:/config/
################################################################################
# Step 3 - Mount Volumes From
docker run --volumes-from dataContainer ubuntu ls /config
################################################################################
# Step 4 - Export / Import Containers
docker export dataContainer > dataContainer.tar
docker import dataContainer.tar
################################################################################
