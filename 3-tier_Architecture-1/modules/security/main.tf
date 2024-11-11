resource "aws_security_group" "eks" {
  vpc_id = var.vpc_id
  ingress {
    ...
  }
  egress {
    ...
  }
}

