variable "ami" {
    description = "passing ami value"
    type = string
    default = "ami=0614680123427b75e"
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "key_name" {
    type = string
    default = "mumbai-key"
  
}
variable "name" {
  description = "The name of the EC2 instance."
  default = ""
}