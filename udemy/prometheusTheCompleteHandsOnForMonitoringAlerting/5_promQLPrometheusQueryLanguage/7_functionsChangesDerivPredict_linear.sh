# Functions - changes, deriv, predict_linear

# restart node exporter before performing
# changes(process_start_time_seconds{job="node_exporter"}[1h])

# deriv(process_resident_memory_bytes{job='node_exporter'}[1h])

# predict_linear(node_memory_MemFree_bytes{job="node_exporter"}[1h], 2*60*60)/1024/1024
