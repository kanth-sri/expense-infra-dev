data "aws_ssm_parameter" "ssm_vpn" {
  name = "/${var.project}/${var.environment}/vpn_sg_id"
}
data "aws_ssm_parameter" "ssm_public_subnet_ids" {
  name = "/${var.project}/${var.environment}/public_subnet_ids"
}
data "aws_ami" "ami_id"{
    most_recent = true
    owners = [ "679593333241" ]

    filter {
      name = "name"
      values = ["OpenVPN Access Server Community Image-fe8020db-*"]
    }
    filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}
