provider "aws" {
  region = "ap-south-1"
}

#Another provider alias 
provider "aws" {
  region = "us-east-1"
  alias = "america"
}

resource "aws_s3_bucket" "test" {
  bucket = "del-hyd-naresh-itttggd"

}
resource "aws_s3_bucket" "test2" {
  bucket = "del-hyd-narehdhfetsh-it-test2"
  provider = aws.america  #provider.value of alias
  
}
  