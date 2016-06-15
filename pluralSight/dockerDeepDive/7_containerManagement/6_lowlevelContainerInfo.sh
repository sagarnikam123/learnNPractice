# Low-level container info

################################################################################
# using inspect command
docker inspect 5056adbd8a07

# info for all runned containers till date
docker inspect `docker ps -a -q`

# info for all images
docker inspect `docker images --quiet`

# this info taken from .json file as below
ls -l /var/lib/docker/containers/5056adbd8a07925c69e951a13c96da74f82001c8eb5239114511c425825d6917/
cd /var/lib/docker/containers/5056adbd8a07925c69e951a13c96da74f82001c8eb5239114511c425825d6917/
cat config.v2.json
cat hostconfig.json
cat hostname

################################################################################
