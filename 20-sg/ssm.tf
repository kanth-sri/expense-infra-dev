resource "aws_ssm_parameter" "mysql_sg_id" {
  name  = "/${var.project}/${var.environment}/mysql_sg_id"
  type  = "String"
  value = module.mysql_sg.sg_id
}
resource "aws_ssm_parameter" "backend_sg_id" {
  name  = "/${var.project}/${var.environment}/backend_sg_id"
  type  = "String"
  value = module.backend_sg.sg_id
}
resource "aws_ssm_parameter" "frontend_sg_id" {
  name  = "/${var.project}/${var.environment}/frontend_sg_id"
  type  = "String"
  value = module.frontend_sg.sg_id
}
resource "aws_ssm_parameter" "bastion_sg_id" {
  name  = "/${var.project}/${var.environment}/bastion_sg_id"
  type  = "String"
  value = module.bastion_sg.sg_id
}
resource "aws_ssm_parameter" "ansible_sg_id" {
  name  = "/${var.project}/${var.environment}/ansible_sg_id"
  type  = "String"
  value = module.ansible_sg.sg_id
}
resource "aws_ssm_parameter" "app_elb_sg_id" {
  name  = "/${var.project}/${var.environment}/app_elb_sg_id"
  type  = "String"
  value = module.app_elb_sg.sg_id
}
resource "aws_ssm_parameter" "vpn_sg_id" {
  name  = "/${var.project}/${var.environment}/vpn_sg_id"
  type  = "String"
  value = module.vpn_sg.sg_id
}