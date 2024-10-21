module "app_elb" {
  source = "terraform-aws-modules/alb/aws"

  name    = "${local.resource_name}-app-elb"
  vpc_id  = local.vpc_id
  subnets = local.private_subnet_ids
  internal = true
  create_security_group = false
  enable_deletion_protection = false
  security_groups = [local.app_elb_sg_id]
  tags = var.common_tags
}
resource "aws_lb_listener" "http" {
  load_balancer_arn = module.app_elb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/html"
      message_body = "Hello, I am from Application ALB"
      status_code  = "200"
    }
  }
}
module "records" {
  source  = "terraform-aws-modules/route53/aws//modules/records"

  zone_name = var.zone_name

  records = [
    {
      name    = "*.app-${var.environment}"
      type    = "A"
      alias   = {
        name    = module.app_elb.dns_name
        zone_id = module.app_elb.zone_id
      }
      allow_overwrite = true
    },
  ]
}

