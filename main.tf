terraform {
    required_version = "~> 1.1.9" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-09d56f8956ab235b3" 
	instance_type = "t2.micro"
}
