env   = "dev"
name  = "jenkins"
owner = "gmlcks"
tags  = {}

# AMI
ami_owners = ["self"]
ami_filters = [
  {
    name   = "name"
    values = ["jenkins-ec2"]
  },
  {
    name = "image-id"
    values = ["ami-0b7bdc6601072a956"]
  }
]

# EC2
# instance_type = "t3.micro"
key_name      = "test"
instance_type = "m4.large"
private_ip    = "10.0.1.40"

# iam
trusted_role_services = ["ec2.amazonaws.com"]
custom_role_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonS3FullAccess",
  "arn:aws:iam::aws:policy/AWSCodeBuildAdminAccess",
  "arn:aws:iam::aws:policy/AWSCodeDeployFullAccess"
]

# http sg
http_sg_description      = "HTTP Security group for Jenkins EC2 instance"
http_ingress_cidr_blocks = ["0.0.0.0/0"]
http_ingress_rules       = ["http-8080-tcp"]
http_egress_rules        = ["all-all"]

