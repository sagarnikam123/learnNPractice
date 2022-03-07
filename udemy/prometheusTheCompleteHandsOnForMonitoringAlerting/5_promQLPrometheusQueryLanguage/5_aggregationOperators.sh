# Aggregation Operators

# sum & sum by
# sum(prometheus_http_requests_total)
# sum(prometheus_http_requests_total) by (code)

# top-k
# topk(3, sum(node_cpu_seconds_total) by (mode))
# bottomk(3, sum(node_cpu_seconds_total) by (mode))

# min-max
# min(node_cpu_seconds_total)
# max(node_cpu_seconds_total)
# count(node_cpu_seconds_total)
