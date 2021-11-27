output "container_id" {
    description = "ID of the Docker container"
    value = docker_container.nginx.id
}

output "image_id" {
    description = "ID of the docker image"
    value = docker_image.nginx.id
}