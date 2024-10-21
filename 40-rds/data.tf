data "aws_ssm_parameter" "ssm_mysql" {
  name = "/${var.project}/${var.environment}/mysql_sg_id"
}
data "aws_ssm_parameter" "ssm_db_subnet_group_name" {
  name = "/${var.project}/${var.environment}/db_subnet_group_name"
}