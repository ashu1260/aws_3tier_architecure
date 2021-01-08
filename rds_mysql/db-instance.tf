resource "aws_db_instance" "RDS_mysql_Project4" {
  allocated_storage           = 20
  storage_type                = "gp2"
  engine                      = "mysql"
  engine_version              = "5.7"
  instance_class              = "db.t2.micro"

   identifier                  =  "rds-mysql-project"

   name                        = "rds_mysql_project"
   username                    = "admin"
   password                    = "admin123"
   parameter_group_name        = "default.mysql5.7"

  db_subnet_group_name         = "subnet-group-project4"

  vpc_security_group_ids       = ["sg-05fe7ebda1d5e01d6"]

  allow_major_version_upgrade = true
  auto_minor_version_upgrade  = true
  skip_final_snapshot         = true



}

