variable "environment" {
  type = object({
    inputs = object({
      vpc_name = string
      vpc_cidr = string
    })
  })
  description = "Environment inputs from Proton"
}
