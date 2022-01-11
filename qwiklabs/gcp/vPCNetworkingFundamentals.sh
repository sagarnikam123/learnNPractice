# VPC Networking Fundamentals

################################################################################
# Explore the default network
################################################################################
# Create a VPC network and VM instances
################################################################################
# Explore the connectivity for VM instances

# To test connectivity to mynet-eu-vm's internal IP
ping -c 3 <Enter mynet-eu-vms internal IP here>
ping -c 3 10.132.0.2

# To test connectivity to mynet-us-vm's external IP,
ping -c 3 <Enter mynet-eu-vms external IP here>
ping -c 3 34.68.105.125
################################################################################
# Test your Understanding

# Remove the allow-icmp firewall rules

# Return to the mynet-us-vm SSH terminal
# To test connectivity to mynet-eu-vm's internal IP
# able to ping mynet-eu-vm's internal IP, because of the allow-internal firewall rule
ping -c 3 <Enter mynet-eu-vms internal IP here>
ping -c 3 10.132.0.2
# To test connectivity to mynet-eu-vm's external IP - not working
# unable to ping mynet-eu-vm's external IP. because you deleted the allow-icmp firewall rule!
ping -c 3 <Enter mynet-eu-vms external IP here>
ping -c 3 34.68.105.125


# Remove the allow-internal firewall rules

# Return to the mynet-us-vm SSH terminal
# unable to ping mynet-eu-vm's internal IP, you deleted the allow-internal firewall rule!
ping -c 3 <Enter mynet-eu-vms internal IP here>
ping -c 3 10.132.0.2

# Remove the allow-ssh firewall rules

# For mynet-us-vm, click SSH to launch a terminal and connect
# Please consider adding a firewall rule to allow ingress from the Cloud IAP for 
# TCP forwarding netblock to the SSH port of your machine 
# to start using Cloud IAP for TCP forwarding for better performance.
################################################################################