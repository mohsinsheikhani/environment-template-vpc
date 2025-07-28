variable "environment" {
  type = object({
    name   = string
    inputs = object({ VpcCIDR = string, VpcName = string })
  })
}

variable "proton_tags" {
  type = map(string)
}