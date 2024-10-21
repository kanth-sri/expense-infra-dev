module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = local.resource_name
  key_name = "openvpn"
  instance_type          = "t3.micro"
  ami = local.ami_id
  vpc_security_group_ids = [local.vpn_sg_id]
  subnet_id              = local.public_subnet_id

  tags = merge(
    var.common_tags,
    {
        Name = local.resource_name
    }
  )
}