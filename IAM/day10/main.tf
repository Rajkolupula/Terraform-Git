resource "aws_key_pair" "name" {
    key_name = "testpublic"
    public_key = file ("~/.ssh/id_rsa.pub")
  
}
resource "aws_instance" "name" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = aws_instance testpublic key.name{
        tags = {
            name = "key.tf"
        }
      
    }
  
}