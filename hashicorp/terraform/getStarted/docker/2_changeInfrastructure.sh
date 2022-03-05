# Change Infrastructure

# Change the docker_container.nginx resource under the provider block in main.tf
# by replacing the ports.external value of 8000 with 8080

# apply execution plan
terraform apply
# -/+ destroy and then create replacement
# # docker_container.nginx must be replaced

# check new resource values
terraform show
