variable "environment" {
  type = object({
    name   = string
    inputs = object({ vpc_cidr = string, vpc_name = string })
  })
}

variable "proton_tags" {
  type = map(string)
}