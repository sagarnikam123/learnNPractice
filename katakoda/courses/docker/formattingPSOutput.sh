# Formatting PS Output

################################################################################
# Example 1 - Names and Images as Table
docker run -d redis
docker ps
docker ps --format '{{.Names }} container is using {{.Image}} image'
docker ps --format 'table {{.Names}} \t {{.Image}}'
################################################################################
# Example 2 - List IP addresses
docker ps -q | xargs docker inspect --format '{{ .Id}} - {{ .Name}} - {{.NetworkSettings.IPAddress}}'
################################################################################
