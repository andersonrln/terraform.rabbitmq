provider "aws" {
    region = "sa-east-1"
}

module "asg" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "~> 3.0"
  
  name = "rabbitmq-prod"

  # Launch configuration
  lc_name = "rabbitmq-prod-new"

  image_id        = "ami-033f8d3b431020c80"
  instance_type   = "m5.xlarge"
  security_groups = ["sg-fba0019d"]
  iam_instance_profile = "arn:aws:iam::827461279864:instance-profile/rabbitmq-autocluster-role"
  user_data       = "${file("user_data.sh")}"

  root_block_device = [
    {
      volume_size = "8"
      volume_type = "gp2"
    },
  ]

  # Auto scaling group
  asg_name                  = "rabbitmq-prod-new"
  vpc_zone_identifier       = ["subnet-02fb81d3eb4b7519e"]
  health_check_type         = "EC2"
  min_size                  = 3
  max_size                  = 3
  desired_capacity          = 3
  wait_for_capacity_timeout = 0
  key_name                  = "easy-keypair-prod"

  tags = [
    {
      key                 = "cluster_formation.aws.instance_tags.environment"
      value               = "production"
      propagate_at_launch = true
    },
    {
      key                 = "cluster_formation.aws.instance_tags.region"
      value               = "sa-east-1"
      propagate_at_launch = true
    },
    {
      key                 = "cluster_formation.aws.instance_tags.service"
      value               = "rabbitmq-new"
      propagate_at_launch = true
    },
  ]

  tags_as_map = {
    environment = "prouction"
    region = "sa-east-1"
    service = "rabbitmq-new"
  }
}
