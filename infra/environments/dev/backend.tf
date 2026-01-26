terraform {
  backend "s3" {
    bucket         = "my-linked-tf-test-bucket33" 
    key            = "prod/terraform.tfstate"       
    region         = "us-east-1"
    encrypt        = true                         
    dynamodb_table = "terraform-lock-table"        
  }
}