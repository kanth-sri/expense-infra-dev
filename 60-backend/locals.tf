locals {
  resource_name = "${var.project}-${var.environment}-backend"
  backend_sg_id = data.aws_ssm_parameter.ssm_backend.value
  private_subnet_id = split(",", data.aws_ssm_parameter.ssm_private_subnet_ids.value)[0]
  ami_id = data.aws_ami.ami_id.id
}