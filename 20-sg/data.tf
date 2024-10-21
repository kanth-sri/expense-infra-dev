data "aws_ssm_parameter" "ssm_vpc" {
  name = "/${var.project}/${var.environment}/vpc_id"
}

