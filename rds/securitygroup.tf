resource "aws_security_group" "mysql" {
  name_prefix = "mysql_sg"
  vpc_id      = var.vpc_id

  ingress {
    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"
    cidr_blocks     = var.vpc_cidr

  }
}