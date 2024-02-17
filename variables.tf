variable "acm_certificate_arn" {
  type = string
}

variable "aws_lb_target_group_arn" {
  type = string
}

variable "env" {
  default = "bsx"
  type    = string
}

variable "host_headers" {
  type    = list(string)
  default = []
}

variable "lb_arn" {
  type = string
}

variable "name" {
  type = string
}
