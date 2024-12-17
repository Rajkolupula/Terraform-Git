 terraform {
      backend "s3" {
        encrypt = true    
         bucket = "raaj1"
        dynamodb_table = "terraform-state-lock-dynamo"
        key    = "terraform.tfstate"
        region = "ap-south-1"
      }
    }