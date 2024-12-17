resource "aws_instance" "test" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai-key"
      
      tags = {
        name ="test"
      }
}