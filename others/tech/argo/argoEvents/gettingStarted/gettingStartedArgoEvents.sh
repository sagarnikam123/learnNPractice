# Getting Started with Argo Events

# Note: You will need to have Argo Workflows installed to make this work.
# We are going to set up a sensor and event-source for webhook.
# The goal is to trigger an Argo workflow upon a HTTP Post request.
#################################################################################
# 1. create the eventbus pods running in the namespace
kubectl create ns argo-events
kubectl apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/eventbus/native.yaml

# 2. Setup event-source for webhook as follows
kubectl apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/event-sources/webhook.yaml
# The above event-source contains a single event configuration that runs an HTTP server on port 12000 with endpoint example
#################################################################################
# After running the above command, the event-source controller will create a pod and service

# 1. Create a service account with RBAC settings to allow the sensor to trigger workflows, and allow workflows to function.
# sensor rbac
kubectl apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/master/examples/rbac/sensor-rbac.yaml
# workflow rbac
kubectl apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/master/examples/rbac/workflow-rbac.yaml

# 2. Create webhook sensor
kubectl apply -n argo-events -f https://raw.githubusercontent.com/argoproj/argo-events/stable/examples/sensors/webhook.yaml
#################################################################################
# Once the sensor object is created, sensor controller will create corresponding pod and a service

# 1. Expose the event-source pod via Ingress, OpenShift Route or port forward to consume requests over HTTP.
kubectl -n argo-events port-forward $(kubectl -n argo-events get pod -l eventsource-name=webhook -o name) 12000:12000 &

# 2. Use either Curl or Postman to send a post request to the http://localhost:12000/example.
curl -d '{"message":"this is my first webhook"}' -H "Content-Type: application/json" -X POST http://localhost:12000/example

# 3. Verify that an Argo workflow was triggered.
kubectl -n argo-events get workflows | grep "webhook"
#################################################################################
