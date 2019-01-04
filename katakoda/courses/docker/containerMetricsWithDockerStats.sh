# See Container Metrics With Docker Stats

################################################################################
# Step 1 - Single Container
docker stats nginx
################################################################################
# Step 2 - Multiple Containers
docker ps -q | xargs docker stats
################################################################################
