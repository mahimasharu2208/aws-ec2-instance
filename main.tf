terraform {
  /*cloud {
    organization = "auth-learning"

    workspaces {
      name = "aws-ec2-instance-test"
    }
  }*/

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-02b64aa047cb5edf5"
  instance_type = "t2.micro"

  tags = {
    Name = "hcp-terraform-demo"
  }
}
