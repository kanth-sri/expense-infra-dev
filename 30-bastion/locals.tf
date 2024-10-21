locals {
  resource_name = "${var.project}-${var.environment}-bastion"
  bastion_sg_id = data.aws_ssm_parameter.ssm_bastion.value
  public_subnet_id = split(",", data.aws_ssm_parameter.ssm_public_subnet_ids.value)[0]
  ami_id = data.aws_ami.ami_id.id
}