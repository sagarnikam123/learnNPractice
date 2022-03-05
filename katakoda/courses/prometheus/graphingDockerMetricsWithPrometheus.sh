# Graphing Docker Metrics with Prometheus

# Graphing Docker 1.13 metrics with Prometheus

# With Docker 1.13, they introduced an experimental feature
# that allows the Docker Engine metrics to be exported using the Prometheus syntax.

###############################################################################
# Step 1 - Enable Metrics

# enable the new experimental flag that will enable the metrics feature and
# define the metrics address to listen on localhost:9323

# command below will update the systemd configuration used to start Docker
# to set the flags when the daemon starts and then restarts Docker
echo '{ "metrics-addr" : "127.0.0.1:9323", "experimental" : true }' > /etc/docker/daemon.json
systemctl restart docker
# see the raw metrics
curl localhost:9323/metrics
###############################################################################
# Step 2 - Configure Prometheus

# prometheus.yml
global:
  scrape_interval:     15s
  evaluation_interval: 15s

scrape_configs:
  - job_name: 'prometheus'

    static_configs:
      - targets: ['127.0.0.1:9090', '127.0.0.1:9100', '127.0.0.1:9323']
        labels:
          group: 'prometheus'

# 9090 is Prometheus itself
# 9100 is the Node Exporter Prometheus process
# 9323 is the Docker Metrics port just exposed
###############################################################################
# Step 3 - Start Prometheus

# Prometheus runs as a Docker Container with a UI available on port 9090
# Any data created by Prometheus will be stored on the host, in the directory
# /prometheus/data. When we update the container, the data will be persisted.
docker run -d --net=host \
-v /root/prometheus.yml:/etc/prometheus/prometheus.yml \
--name prometheus-server prom/prometheus
###############################################################################
# Step 4 - Start Node Exporter

docker run -d \
  -v "/proc:/host/proc" \
  -v "/sys:/host/sys" \
  -v "/:/rootfs" \
  --net="host" \
  --name=prometheus \
  quay.io/prometheus/node-exporter:v0.13.0 \
    -collector.procfs /host/proc \
    -collector.sysfs /host/sys \
    -collector.filesystem.ignored-mount-points "^/(sys|proc|dev|host|etc)($|/)"

# see raw metrics
curl localhost:9100/metrics
###############################################################################
# Step 5 - View Metrics

# default Prometheus Dashboard reports internal information and provides
# a way to debug the metrics being collected.
# graph -> https://2886795292-9090-elsy04.environments.katacoda.com/graph
# targets -> https://2886795292-9090-elsy04.environments.katacoda.com/targets

# adds a graph and entering a PromQL query or metrics label

# show how many Docker actions are being performed
# actions are containers being started, deleted, created, committed, or changed.
engine_daemon_container_actions_seconds_sum

# host metrics
# will output the Docker Hosts CPU information
node_cpu

# Generate Metrics
# Running additional containers will result in changes to the metrics produced,
docker run -d katacoda/docker-http-server:latest
###############################################################################
