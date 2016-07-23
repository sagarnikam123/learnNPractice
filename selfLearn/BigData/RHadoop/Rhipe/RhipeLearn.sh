# RHipe installation-examples - - - -Learn


# install prerequisite
sudo apt-get install binutils-gold

#Google's ProtoBuffer
wget http://protobuf.googlecode.com/files/protobuf-2.4.1.tar.gz
tar -xzf protobuf-2.4.1.tar.gz
cd protobuf-2.4.1
./configure
make
sudo make install

# exporting PATHs
export PKG_CONFIG_PATH=/usr/local/lib64/pkgconfig:/usr/lib/pkgconfig
export LD_LIBRARY_PATH=/usr/local/lib:/usr/local/lib/R/lib:/usr/local/lib64/R/lib:/usr/lib/R/lib:/usr/lib:/usr/lib64


# Download Rhipe pkg:-  http://www.datadr.org/install.html
# Documentation:- http://www.datadr.org/doc/index.html
# Installing Rhipe package
R CMD INSTALL Rhipe_0.73.1.tar.gz 

#Open R & load library
library(Rhipe)
# set some env variable
Sys.setenv(HADOOP_HOME="/home/hadoop/apacheC/hadoop-1.0.4");
Sys.setenv(HADOOP_BIN="/home/hadoop/apacheC/hadoop-1.0.4/bin");
Sys.setenv(HADOOP_CONF_DIR="/home/hadoop/apacheC/hadoop-1.0.4/conf");

rhinit()  # Initializing
hdfs.getwd() # get working directory
