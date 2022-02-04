# 2. Selectors & Matchers

# Selectors {}
# process_cpu_seconds_total{job="node_exporter"}
# process_cpu_seconds_total{instance='localhost:9100', job='node_exporter'}
# process_cpu_seconds_total{instance='localhost:8080', job='node_exporter'}

# Matchers
# Equality matcher -> =
# process_cpu_seconds_total{job='node_exporter'}
# Not quality matcher -> !=
# process_cpu_seconds_total{job != 'prometheus'}
# Regular expresssion matcher -> =~
# prometheus_http_requests_total{handler =~ '/api.*'}
# Negative Regular expresssion matcher -> =~
# prometheus_http_requests_total{handler !~ '/api.*'}

# Range selector
# prometheus_http_requests_total{handler !~ '/api.*'}[1m] # 4 samples
# prometheus_http_requests_total{handler !~ '/api.*'}[5m] # 20 samples
