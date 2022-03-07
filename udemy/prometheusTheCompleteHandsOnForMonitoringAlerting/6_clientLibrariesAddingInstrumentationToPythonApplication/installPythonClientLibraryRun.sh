# install prometheus python client library

pip3 install prometheus_client

# restart prometheus server after addition
# promethus.yml
  - job_name: 'prom_python_app'
    static_configs:
      - targets: ["localhost:8001"]

# view python app metics target
# http://localhost:9090/targets
# query - python_info
