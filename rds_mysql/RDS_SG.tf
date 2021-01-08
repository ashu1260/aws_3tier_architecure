resource "aws_security_group_rule" "mysql_DB_SG" {
  from_port         = 3306
  protocol          = "tcp"
  security_group_id = "sg-05fe7ebda1d5e01d6"
  to_port           = 3306
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]

}
