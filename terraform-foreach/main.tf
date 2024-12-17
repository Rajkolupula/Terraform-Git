provider "aws" {
  
}
resource "aws_instance" "name" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai-key"
    for_each = toset(var.sandboxes)
    tags = {
      Name = each.value
    }
}
variable "sandboxes" {
    type = list(string)
    default = ["test","prod" ]
  
}