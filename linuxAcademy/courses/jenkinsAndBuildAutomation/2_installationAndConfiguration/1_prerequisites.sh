# Prerequisites

# CentOS-7
# check which java present
which java

# checking port 8080 is open or not
cat /etc/services | grep 8080

# connecting to open port
sudo yum install telnet
telnet localhost 8080

# other method
# scanning port for open port & running services on it
sudo yum install nmap
sudo nmap -sT -O localhost

# check see which ports listen
netstat -anp | grep 8080

# install Oracle-Java-JDK-8
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" \
"http://download.oracle.com/otn-pub/java/jdk/8u111-b14/jdk-8u111-linux-x64.rpm"

#sudo yum localinstall jdk-8u111-linux-x64.rpm
sudo rpm -Uvh jdk-8u111-linux-x64.rpm

# checking java
which java

# check links
cd /usr/java
ll
cd latest
ll

# install with alternatives to setup diff versions of java
sudo alternatives --install /usr/bin/java java /usr/java/latest/bin/java 200000
sudo alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 200000
sudo alternatives --install /usr/bin/jar jar /usr/java/latest/bin/jar 200000

# configuring
sudo alternatives --config java

# checking version
java -version
javac -version

# adding ENV variable
cd /etc/rc.d
sudo vi rc.local
export JAVA_HOME="/usr/java/latest"
