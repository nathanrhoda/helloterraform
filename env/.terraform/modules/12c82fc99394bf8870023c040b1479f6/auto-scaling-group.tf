resource "aws_autoscaling_group" "example" {
  name                 = "${aws_launch_configuration.example.name}"
  launch_configuration = "${aws_launch_configuration.example.id}"
  availability_zones   = ["${data.aws_availability_zones.all.names}"]
  min_size             = 2
  max_size             = 10
  min_elb_capacity     = 2
  load_balancers       = ["${aws_elb.example.name}"]
  health_check_type    = "ELB"

  tag {
    key                 = "Name"
    value               = "${var.asg}"
    propagate_at_launch = true
  }

  lifecycle {
    create_before_destroy = true
  }
}
