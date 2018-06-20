terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}

provider "aws" {
  region = "us-east-1"
}

module "env" {
  source = "../global/"

  server_port     = "${var.server_port}"
  sg_launchconfig = "${var.environment}-${var.sg_launchconfig}"
  asg             = "${var.environment}-${var.asg}"
  elb             = "${var.environment}-${var.elb}"
  sg_elb          = "${var.environment}-${var.sg_elb}"
  user_data       = "${file("user-data.web")}"
}

output "elb_dns_name" {
  value = "${module.env.elb_dns_name}"
}
