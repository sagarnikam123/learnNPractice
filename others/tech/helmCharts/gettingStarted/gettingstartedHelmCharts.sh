# Getting started with Helm Charts

################################################################################
# create chart
helm create others/tech/helmCharts/mychart

# check linting
helm lint others/tech/helmCharts/mychart

# dry run to see values
helm install --dry-run --debug --generate-name

# complete install on kubernetes
helm install myexample others/tech/helmCharts/mychart --set service.type=NodePort

# check release
helm list

# uninstall release
helm uninstall myexample
################################################################################
