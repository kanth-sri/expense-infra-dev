variable "project" {
  default = "expense"
}
variable "environment" {
  default = "dev"
}
variable "common_tags" {
  default = {
    projects = "expense"
    terraform = "true"
    env = "dev"
  }
}
variable "zone_name" {
  default = "srikanthadepu.online"
}