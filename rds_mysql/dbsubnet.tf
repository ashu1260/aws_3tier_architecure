 resource "aws_db_subnet_group" "rds-subnet-group" {
        
        name = "subnet-group-project4"
        subnet_ids = ["subnet-09769bc39e57de54d", "subnet-08a473b6bf4f27ad2"]
    
      tags = {
        
          Name = "rds-subnet-group"
      }

  
}
