locals {
  resource_name = "${var.project}-${var.environment}-vpn"
  vpn_sg_id = data.aws_ssm_parameter.ssm_vpn.value
  public_subnet_id = split(",", data.aws_ssm_parameter.ssm_public_subnet_ids.value)[0]
  ami_id = data.aws_ami.ami_id.id
}