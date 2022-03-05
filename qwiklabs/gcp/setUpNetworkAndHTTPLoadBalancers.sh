# Set Up Network and HTTP Load Balancers-GSP007

###############################################################################
# Task 1: Set the default region and zone for all resources

gcloud config set compute/zone us-central1-a
gcloud config set conpute/region us-central1
###############################################################################

# Task 2: Create multiple web server instances

# 1.create three Compute Engine VM instances in your default zone and give them all the same tag.
# and install Apache on them, then add a firewall rule that
# allows HTTP traffic to reach the instances.
gcloud compute instances create www1 \
  --image-family debian-9 \
  --image-project debian-cloud \
  --zone us-central1-a \
  --tags network-lb-tag \
  --metadata startup-script="#! /bin/bash
    sudo apt-get update
    sudo apt-get install apache2 -y
    sudo service apache2 restart
    echo '<!doctype html><html><body><h1>www1</h1></body></html>' | tee /var/www/html/index.html"

gcloud compute instances create www2 \
  --image-family debian-9 \
  --image-project debian-cloud \
  --zone us-central1-a \
  --tags network-lb-tag \
  --metadata startup-script="#! /bin/bash
    sudo apt-get update
    sudo apt-get install apache2 -y
    sudo service apache2 restart
    echo '<!doctype html><html><body><h1>www2</h1></body></html>' | tee /var/www/html/index.html"

gcloud compute instances create www3 \
  --image-family debian-9 \
  --image-project debian-cloud \
  --zone us-central1-a \
  --tags network-lb-tag \
  --metadata startup-script="#! /bin/bash
    sudo apt-get update
    sudo apt-get install apache2 -y
    sudo service apache2 restart
    echo '<!doctype html><html><body><h1>www3</h1></body></html>' | tee /var/www/html/index.html"

# 2. Create a firewall rule to allow external traffic to the VM instances:
gcloud compute firewall-rules create www-firewall-network-lb \
    --target-tags network-lb-tag --allow tcp:80

# 3. Run the following to list your instances.
# You'll see their IP addresses in the EXTERNAL_IP column:
gcloud compute instances list

# NAME: www1
# ZONE: us-central1-a
# MACHINE_TYPE: n1-standard-1
# PREEMPTIBLE:
# INTERNAL_IP: 10.128.0.2
# EXTERNAL_IP: 34.133.206.246
# STATUS: RUNNING

# 4. Verify that each instance is running with curl, replacing [IP_ADDRESS]
# with the IP address for each of your VMs:
curl http://[IP_ADDRESS]
curl http://34.136.103.164
###############################################################################

# Task 3: Configure the load balancing service

# 1. Create a static external IP address for your load balancer:
gcloud compute addresses create network-lb-ip-1 \
 --region us-central1

# 2. Add a legacy HTTP health check resource:
gcloud compute http-health-checks create basic-check

# 3. Add a target pool in the same region as your instances. Run the following to create
# the target pool and use the health check, which is required for the service to function:
gcloud compute target-pools create www-pool \
    --region us-central1 --http-health-check basic-check

# 4. Add the instances to the pool:
gcloud compute target-pools add-instances www-pool \
    --instances www1, www2, www3

# 5. Add a forwarding rule:
gcloud compute forwarding-rules create www-rule \
    --region us-central1 \
    --ports 80 \
    --address network-lb-ip-1 \
    --target-pool www-pool
###############################################################################

# Task 4: Sending traffic to your instances

# view the external IP address of the www-rule forwarding rule used by the load balancer
gcloud compute forwarding-rules describe www-rule --region us-central1

# access the external IP address, replacing IP_ADDRESS
# with an external IP address from the previous command:
while true; do curl -m1 IP_ADDRESS; done
while true; do curl -m1 35.222.40.83; done
###############################################################################

# Task 5: Create an HTTP load balancer

# 1. First, create the load balancer template:
gcloud compute instance-templates create lb-backend-template \
   --region=us-central1 \
   --network=default \
   --subnet=default \
   --tags=allow-health-check \
   --image-family=debian-9 \
   --image-project=debian-cloud \
   --metadata=startup-script='#! /bin/bash
     apt-get update
     apt-get install apache2 -y
     a2ensite default-ssl
     a2enmod ssl
     vm_hostname="$(curl -H "Metadata-Flavor:Google" \
     http://169.254.169.254/computeMetadata/v1/instance/name)"
     echo "Page served from: $vm_hostname" | \
     tee /var/www/html/index.html
     systemctl restart apache2'

# 2. Create a managed instance group based on the template:
gcloud compute instance-groups managed create lb-backend-group \
   --template=lb-backend-template --size=2 --zone=us-central1-a

# 3. Create the fw-allow-health-check firewall rule. This is an ingress rule that allows traffic from the Google Cloud health checking systems (130.211.0.0/22 and 35.191.0.0/16). This lab uses the target tag allow-health-check to identify the VMs.
gcloud compute firewall-rules create fw-allow-health-check \
    --network=default \
    --action=allow \
    --direction=ingress \
    --source-ranges=130.211.0.0/22,35.191.0.0/16 \
    --target-tags=allow-health-check \
    --rules=tcp:80

# 4. Now that the instances are up and running, set up a global static external IP address
# that your customers use to reach your load balancer.
gcloud compute addresses create lb-ipv4-1 \
    --ip-version=IPV4 \
    --global

# Note the IPv4 address that was reserved:
gcloud compute addresses describe lb-ipv4-1 \
    --format="get(address)" \
    --global

# 34.120.210.82

# 5. Create a healthcheck for the load balancer.
gcloud compute health-checks create http http-basic-check \
    --port 80

# 6. Create a backend service.
gcloud compute backend-services create web-backend-service \
    --protocol=HTTP \
    --port-name=http \
    --health-checks=http-basic-check \
    --global

# 7. Add your instance group as the backend to the backend service.
gcloud compute backend-services add-backend web-backend-service \
    --instance-group=lb-backend-group \
    --instance-group-zone=us-central1-a \
    --global

# 8. Create a URL map to route the incoming requests to the default backend service.
gcloud compute url-maps create web-map-http \
    --default-service web-backend-service

# 9. Create a target HTTP proxy to route requests to your URL map.
gcloud compute target-http-proxies create http-lbl-proxy \
    --url-map web-map-http

# 10. Create a global forwarding rule to route incoming requests to the proxy:
gcloud compute forwarding-rules create http-content-rule \
    --address=lb-ipv4-1\
    --global \
    --target-http-proxy=http-lb-proxy \
    --ports=80
###############################################################################

# Task 6: Testing traffic sent to your instances

# 1. In the Cloud Console, from the Navigation menu, go to Network services > Load balancing.

# 2. Click on the load balancer that you just created (web-map-http).

# 3. In the Backend section, click on the name of the backend and confirm that the VMs are Healthy.
# If they are not healthy, wait a few moments and try reloading the page.

# 4,. When the VMs are healthy, test the load balancer using a web browser, going to http://IP_ADDRESS/,
# replacing IP_ADDRESS with the load balancer's IP address.

###############################################################################
