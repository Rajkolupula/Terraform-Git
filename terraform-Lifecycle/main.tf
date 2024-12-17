provider "aws" {
  
}
resource "aws_instance" "name"{
    ami = "ami-0440d3b780d96b29d"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1"
    
  tags = {
    Name = "test"
  }
}
