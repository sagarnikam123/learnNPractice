# Functions - 'rate' & 'irate'

# rate
# rate(prometheus_http_requests_total[10m])
# rate(prometheus_http_requests_total{code="400"}[10m])
# rate(prometheus_http_requests_total{handler=~"/api.*"}[10m])

# irate
# irate(prometheus_http_requests_total[10m])
