resource "aws_instance" "ec2" {
  ami = var.ami
  instance_type = var.type
  depends_on = [ aws_key_pair.test ]
  tags = {
    name = "ec2"
  }
}
resource "aws_key_pair" "test" {
  key_name = "test"
  public_key = file("~/.ssh/id_ed25519.pub")
  
}
