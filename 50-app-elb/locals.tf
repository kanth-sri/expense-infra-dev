locals {
  resource_name = "${var.project}-${var.environment}"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
  app_elb_sg_id = data.aws_ssm_parameter.app_elb_sgid.value
}