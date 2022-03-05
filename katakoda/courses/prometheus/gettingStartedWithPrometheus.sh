# Getting Started with Prometheus

# Prometheus is an open source systems monitoring and alerting toolkit
# originally built at SoundCloud. Since its inception in 2012, many companies
# and organizations have adopted Prometheus, and the project has a very active
# developer and user community. It is now a standalone open source project
# and maintained independently of any company. To emphasize this and clarify
# the project's governance structure, Prometheus joined the Cloud Native Computing
# Foundation in 2016 as the second hosted project after Kubernetes.
# More details can be found at https://prometheus.io
###############################################################################
# Step 1 - Configure Prometheus

# prometheus.yml
global:
  scrape_interval:     15s
  evaluation_interval: 15s

scrape_configs:
  - job_name: 'prometheus'

    static_configs:
      - targets: ['127.0.0.1:9090', '127.0.0.1:9100']
        labels:
          group: 'prometheus'
###############################################################################
# Step 2 - Start Prometheus

# dashboard is viewable on port 9090.
# launch prometheus server-container
docker run -d --net=host \
-v /root/prometheus.yml:/etc/prometheus/prometheus.yml \
--name prometheus-server \
prom/prometheus
###############################################################################
# Step 3 - Start Node Exporter

# launch Node exporter container
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
# Step 4 - View Metrics

# open dashboard
# Query Prometheus
node_network_receive_bytes
node_cpu
###############################################################################
