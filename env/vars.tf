variable environment {
  description = "Environment we are deploying to"
  default     = "env"
}

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default     = 8080
}

variable "sg_launchconfig" {
  description = "Security group for launch configuration"
  default     = "terraform-example-instance"
}

variable "asg" {
  description = "Auto Scaling group name"
  default     = "terraform-asg-example"
}

variable "elb" {
  description = "Elastic Load Balancer"
  default     = "terraform-elb"
}

variable "sg_elb" {
  description = "Security group for ELB"
  default     = "sg-elb"
}
