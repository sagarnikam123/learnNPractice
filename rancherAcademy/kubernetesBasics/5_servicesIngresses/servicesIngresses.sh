# services and ingresses

#######################################################################################################################
# Create a Simple App

mkdir hello-world
nano Dockerfile
touch index.html

nerdctl --namespace k8s.io build --tag hello-world:latest .
#######################################################################################################################
# Deploying an App

nano deployment.yaml
kubectl create -f deployment.yaml
kubectl describe deployments -n namespace-1

# expose deployment - by default it will take ClusterIP
kubectl expose deployment hello-world-deployment --name hello-world-service --port=8080 --target-port=80 -n namespace-1
kubectl describe service hello-world-service
kubectl describe service -n namespace-1

# deploy nginx-ingress-controller
# kubectl -f apply https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/cloud/deploy.yaml
kubectl get pods --namespace=ingress-nginx

# get hostname for your underline machine
echo $HOSTNAME  # put hostname in lower case
# create ingress
kubectl create ingress hello-world-ingress --class=nginx --rule="<your_hostname>/*=hello-world-service:80" -n namespace-1
kubectl create ingress hello-world-ingress --class=nginx --rule="macbookpro.local/*=hello-world-service:80" -n namespace-1
# kubectl delete ingress hello-world-ingress -n namespace-1
kubectl describe ingress -n namespace-1

# port-forwarding
kubectl port-forward --namespace=ingress-nginx service/ingress-nginx-controller 8081:80
# open in browser
# - http://<your_hostname>:8081
# - http://macbookpro.local:8081/
#######################################################################################################################
