locals {
  resource_name = "${var.project}-${var.environment}"
  mysql_sg_id = data.aws_ssm_parameter.ssm_mysql.value
  db_subnet_group_name = data.aws_ssm_parameter.ssm_db_subnet_group_name.value
}