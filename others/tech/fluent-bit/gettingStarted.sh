# fluent-bit getting started

# get help
fluent-bit --help
# fluent-bit collects node metrics by using the node_exporter_metrics plugin
# which mimics the Prometheus node exporter tool (No Prometheus needed)
fluent-bit -i node_exporter_metrics -o stdout

#
fluent-bit -c /fluent-bit/etc/fluent-bit_1.conf
