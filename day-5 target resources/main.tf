resource "aws_instance" "dependent" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai-key"
  
}
resource "aws_s3_bucket" "dependent" {
    bucket = "testbuckethyghjjuh"
  
}


  
#terraform apply -target=aws_s3_bucket.dependent
#terraform destroy -target=aws_s3_bucket.dependent