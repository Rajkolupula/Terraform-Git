provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0614680123427b75e" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  key_name      = "test"

  tags = {
    Name = "ExampleInstance"
  }
}

resource "null_resource" "install_apache" {
  depends_on = [aws_instance.example]

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("~/.ssh/id_ed25519") # Path to your private key
      host        = aws_instance.example.public_ip
    }

    inline = [
      "sudo yum update -y",
      "sudo yum install -y httpd",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd"
    ]
  }
}