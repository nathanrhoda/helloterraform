variable "server_port" {}
variable "sg_launchconfig" {}
variable "asg" {}
variable "elb" {}
variable "sg_elb" {}

variable "user_data" {}

data "aws_availability_zones" "all" {}
