provider "aws" {
  
}
resource "aws_instance" "name" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai-key"
    count = length(var.sandboxes)
    tags = {
      #Name = "web"
      #Name = "web-$(count.index)"
      Name = var.sandboxes[count.index]

    }

}
variable "sandboxes" {
        type = list(string)
        default = ["test","prod" ]
}
