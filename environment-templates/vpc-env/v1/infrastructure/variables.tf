variable "environment" {
  type = object({
    inputs = object({
      vpc_name = string
      vpc_cidr = string
    })
    name = string
  })
  description = "Environment inputs from Proton"
}

variable "proton_tags" {
  type        = map(string)
  description = "Tags provided by Proton"
  default     = {}
}
