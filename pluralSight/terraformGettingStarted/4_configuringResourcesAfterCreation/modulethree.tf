################################################################################
#  VARIABLES
################################################################################

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}

variable "key_name" {
  default = "ap-south-1Mumbai"
}

variable "network_address_space" {
  default = "10.1.0.0/16"
}

variable "subnet1_address_space" {
  default = "10.1.0.0/24"
}

variable "subnet2_address_space" {
  default = "10.1.1.0/24"
}

variable "billing_code_tag" {}
variable "environment_tag" {}
variable "bucket_name" {}

################################################################################
#  PROVIDERS
################################################################################

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "ap-south-1"
}

################################################################################
#  DATA
################################################################################

data "aws_availability_zones" "available" {}

################################################################################
#  RESOURCES
################################################################################

# NETWORKING #

resource "aws_vpc" "vpc" {
  cidr_block = "${var.network_address_space}"

  tags {
    Name        = "${var.environment_tag}-vpc"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = "${aws_vpc.vpc.id}"

  tags {
    Name        = "${var.environment_tag}-igw"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block              = "${var.subnet1_address_space}"
  vpc_id                  = "${aws_vpc.vpc.id}"
  map_public_ip_on_launch = true
  availability_zone       = "${data.aws_availability_zones.available.names[0]}"

  tags {
    Name        = "${var.environment_tag}-subnet1"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_subnet" "subnet2" {
  cidr_block              = "${var.subnet2_address_space}"
  vpc_id                  = "${aws_vpc.vpc.id}"
  map_public_ip_on_launch = true
  availability_zone       = "${data.aws_availability_zones.available.names[1]}"

  tags {
    Name        = "${var.environment_tag}-subnet2"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

# ROUTING #
resource "aws_route_table" "rtb" {
  vpc_id = "${aws_vpc.vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags {
    Name        = "${var.environment_tag}-rtb"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_route_table_association" "rta-subnet1" {
  subnet_id      = "${aws_subnet.subnet1.id}"
  route_table_id = "${aws_route_table.rtb.id}"
}

resource "aws_route_table_association" "rta-subnet2" {
  subnet_id      = "${aws_subnet.subnet2.id}"
  route_table_id = "${aws_route_table.rtb.id}"
}

# SECURITY GROUPS #
resource "aws_security_group" "elb-sg" {
  name   = "nginx_elb_sg"
  vpc_id = "${aws_vpc.vpc.id}"

  # Allow HTTP from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow all outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name        = "${var.environment_tag}-elb-sg"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

# Nginx security group
resource "aws_security_group" "nginx-sg" {
  name   = "nginx_sg"
  vpc_id = "${aws_vpc.vpc.id}"

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # HTTP access from the VPC
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${var.network_address_space}"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name        = "${var.environment_tag}-nginx-sg"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

# LOAD BALANCER #
resource "aws_elb" "web" {
  name = "nginx-elb"

  subnets         = ["${aws_subnet.subnet1.id}", "${aws_subnet.subnet2.id}"]
  security_groups = ["${aws_security_group.elb-sg.id}"]
  instances       = ["${aws_instance.nginx1.id}", "${aws_instance.nginx2.id}"]

  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  tags {
    Name        = "${var.environment_tag}-elb"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

# INSTANCES #
resource "aws_instance" "nginx1" {
  ami                    = "ami-b46f48db"
  instance_type          = "t2.micro"
  subnet_id              = "${aws_subnet.subnet1.id}"
  vpc_security_group_ids = ["${aws_security_group.nginx-sg.id}"]
  key_name               = "${var.key_name}"

  connection {
    user        = "ec2-user"
    private_key = "${file(var.private_key_path)}"
  }

  provisioner "file" {
    content = <<EOF
    access_key = ${aws_iam_access_key.write_user.id}
    secret_key = ${aws_iam_access_key.write_user.secret}
    use_https = True
    bucket_location = US

    EOF

    destination = "/home/ec2-user/.s3cfg"
  }

  provisioner "file" {
    content = <<EOF
/var/log/nginx/*log {
  daily
  rotate 10
  missingok
  sharedscripts
  postrotate
  INSTANCE_ID=`curl --silent http://169.254.169.254/latest/meta-data/instance-id`
  /usr/local/bin/s3cmd sync /var/log/nginx/access.log-* s3://${aws_s3_bucket.web_bucket.id}/$INSTANCE_ID/nginx/
  /usr/local/bin/s3cmd sync /var/log/nginx/error.log-* s3://${aws_s3_bucket.web_bucket.id}/$INSTANCE_ID/nginx
  enscript
}
EOF

    destination = "/home/ec2-user/nginx"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install nginx -y",
      "sudo service nginx start",
      "sudo cp /home/ec2-user/.s3cfg/root/.s3cfg",
      "sudo cp /home/ec2-user/nginx/etc/logrotate.d/nginx",
      "sudo pip install s3cmd",
      "s3cmd get s3://${aws_s3_bucket.web_bucket.id}/website/index.html .",
      "s3cmd get s3://${aws_s3_bucket.web_bucket.id}/website/Globo_logo_Vert.png .",
      "sudo cp /home/ec2-user/index.html /usr/share/nginx/html/index.html",
      "sudo cp /home/ec2-user/Globo_logo_Vert.png /usr/share/nginx/html/Globo_logo_Vert.png",
      "sudo logrotate -f /etc/logrotate.conf",
    ]
  }

  tags {
    Name        = "${var.environment_tag}-nginx1"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_instance" "nginx2" {
  ami                    = "ami-b46f48db"
  instance_type          = "t2.micro"
  subnet_id              = "${aws_subnet.subnet2.id}"
  vpc_security_group_ids = ["${aws_security_group.nginx-sg.id}"]
  key_name               = "${var.key_name}"

  connection {
    user        = "ec2-user"
    private_key = "${file(var.private_key_path)}"
  }

  provisioner "file" {
    content = <<EOF
access_key = ${aws_iam_access_key.write_user.id}
secret_key = ${aws_iam_access_key.write_user.secret}
use_https = True
bucket_location = US

EOF

    destination = "/home/ec2-user/.s3cfg"
  }

  provisioner "file" {
    content = <<EOF
/var/log/nginx/*log {
    daily
    rotate 10
    missingok
    compress
    sharedscripts
    postrotate
      INSTANCE_ID=`curl --silent http://169.254.169.254/latest/meta-data/instance-id`
      /usr/local/bin/s3cmd sync /var/log/nginx/access.log-* s3://${aws_s3_bucket.web_bucket.id}/$INSTANCE_ID/nginx/
      /usr/local/bin/s3cmd sync /var/log/nginx/error.log-* s3://${aws_s3_bucket.web_bucket.id}/$INSTANCE_ID/nginx/
    endscript
}

EOF

    destination = "/home/ec2-user/nginx"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum install nginx -y",
      "sudo service nginx start",
      "sudo cp /home/ec2-user/.s3cfg /root/.s3cfg",
      "sudo cp /home/ec2-user/nginx /etc/logrotate.d/nginx",
      "sudo pip install s3cmd",
      "s3cmd get s3://${aws_s3_bucket.web_bucket.id}/website/index.html .",
      "s3cmd get s3://${aws_s3_bucket.web_bucket.id}/website/Globo_logo_Vert.png .",
      "sudo cp /home/ec2-user/index.html /usr/share/nginx/html/index.html",
      "sudo cp /home/ec2-user/Globo_logo_Vert.png /usr/share/nginx/html/Globo_logo_Vert.png",
      "sudo logrotate -f /etc/logrotate.conf",
    ]
  }

  tags {
    Name        = "${var.environment_tag}-nginx2"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

# S3 Bucket config#
resource "aws_iam_user" "write_user" {
  name          = "${var.environment_tag}-s3-write-user"
  force_destroy = true
}

resource "aws_iam_access_key" "write_user" {
  user = "${aws_iam_user.write_user.name}"
}

resource "aws_iam_user_policy" "write_user_pol" {
  name = "write"
  user = "${aws_iam_user.write_user.name}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::${var.environment_tag}-${var.bucket_name}",
                "arn:aws:s3:::${var.environment_tag}-${var.bucket_name}/*"
            ]
        }
   ]
}
EOF
}

resource "aws_s3_bucket" "web_bucket" {
  bucket        = "${var.environment_tag}-${var.bucket_name}"
  acl           = "private"
  force_destroy = true

  policy = <<EOF
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "PublicReadForGetBucketObjects",
            "Effect": "Allow",
            "Principal": {
                "AWS": "*"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.environment_tag}-${var.bucket_name}/*"
        },
        {
            "Sid": "",
            "Effect": "Allow",
            "Principal": {
                "AWS": "${aws_iam_user.write_user.arn}"
            },
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::${var.environment_tag}-${var.bucket_name}",
                "arn:aws:s3:::${var.environment_tag}-${var.bucket_name}/*"
            ]
        }
    ]
}
EOF

  tags {
    Name        = "${var.environment_tag}-web_bucket"
    BillingCode = "${var.billing_code_tag}"
    Environment = "${var.environment_tag}"
  }
}

resource "aws_s3_bucket_object" "website" {
  bucket = "${aws_s3_bucket.web_bucket.bucket}"
  key    = "/website/index.html"
  source = "./index.html"
}

resource "aws_s3_bucket_object" "graphic" {
  bucket = "${aws_s3_bucket.web_bucket.bucket}"
  key    = "/website/Globo_logo_Vert.png"
  source = "./Globo_logo_Vert.png"
}

##################################################################################
# OUTPUT
##################################################################################

output "aws_elb_public_dns" {
  value = "${aws_elb.web.dns_name}"
}
