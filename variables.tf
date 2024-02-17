variable "acm_certificate_arn" {
}

variable "aws_lb_target_group_arn" {
}

variable "env" {
  default = "bsx"
}

variable "host_headers" {
  type    = list(string)
  default = []
}

variable "lb_arn" {
}

variable "name" {
}
