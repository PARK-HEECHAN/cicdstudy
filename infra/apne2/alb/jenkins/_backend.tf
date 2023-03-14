terraform {
  backend "s3" {
    bucket      = "cicdstudy-dev-tfbackend-s3"
    key         = "dev/apne2/ec2/jenkins_alb/terraform.tfstate"
    region      = "ap-northeast-2"
#    role_arn    = "{ASSUMED_ROLE}"
    max_retries = 3
  }
}
