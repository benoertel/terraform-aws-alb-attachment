resource "aws_alb_listener_rule" "instance" {
  listener_arn = data.aws_alb_listener.cluster_https.arn

  action {
    type             = "forward"
    target_group_arn = var.aws_lb_target_group_arn
  }

  condition {
    host_header {
      values = var.host_headers
    }
  }
}

resource "aws_lb_listener_certificate" "web" {
  listener_arn    = data.aws_alb_listener.cluster_https.arn
  certificate_arn = var.acm_certificate_arn
}
