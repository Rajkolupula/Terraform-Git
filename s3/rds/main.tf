provider "aws" {
  
}
resource "aws_db_instance" "mysql" {
    engine = "mysql"
    engine_version = "8.0"
    identifier = "terraform-database"
    username = "raaj1"
    password = "123456789"
    instance_class = "db.t3.micro"
    allocated_storage = 20
}