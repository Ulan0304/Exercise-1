resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = var.username
  password             = var.password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}

variable "db_name" {
  type = string
}
variable "engine" {
  type = string
}
variable "username" {
  type = string
}
variable "password" {
  type = string
}


