resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.db_instance_type
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = var.parameter_group_name
  vpc_id = var.vpc_id
  vpc_cide = var.vpc_cidr
  skip_final_snapshot  = true
  vpc_security_group_ids = var.db_security_group_ids
  db_subnet_group_name = var.db_subnet_group_name
}
