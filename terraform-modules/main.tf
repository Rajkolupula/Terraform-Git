module "test" {
 source = "../day-3"
    ami = "ami-0614680123427b75e"
    type = "t2.micro"
    key = "mumbai-key"
}