# Node Exporter - Monitoring Linux Systems

# extract Node exporter
tar -xvzf node_exporter-1.3.1.linux-amd64.tar.gz

# Runing standalone node exporter
cd node_exporter-1.3.1.linux-amd64
./node_exporter
# could not get power_supply class info: error obtaining power_supply class info: failed to read file \"/sys/class/power_supply/BAT0/energy_full\": no such device
# ./node_exporter --no-collector.powersupplyclass

# open http://localhost:9100/metrics

# prometheus.yml & restart prometheus again
	# Linux node
  - job_name: "node_exporter"
    static_configs:
      - targets: ["localhost:9100"]

# evaluate below expression in query box (switch between Classic UI & New UI)
# up
# node_memory_MemAvailable_bytes
