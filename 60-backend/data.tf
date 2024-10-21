data "aws_ssm_parameter" "ssm_backend" {
  name = "/${var.project}/${var.environment}/backend_sg_id"
}
data "aws_ssm_parameter" "ssm_private_subnet_ids" {
  name = "/${var.project}/${var.environment}/private_subnet_ids"
}
data "aws_ami" "ami_id"{
    most_recent = true
    owners = [ "973714476881" ]

    filter {
      name = "name"
      values = ["RHEL-9-DevOps-Practice"]
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