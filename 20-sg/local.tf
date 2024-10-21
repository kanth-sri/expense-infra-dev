locals {
  vpc_id = data.aws_ssm_parameter.ssm_vpc.value
}
