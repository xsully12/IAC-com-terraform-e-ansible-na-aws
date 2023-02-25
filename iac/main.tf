terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
    region  = "us-west-2"
    profile    = "default"
  
}

resource "aws_instance" "app_server" {
    ami           = "ami-0735c191cf914754d"
    instance_type = "t2.micro"
    key_name = "iac-key"
    #user_data = <<-EOF
    #           #!/bin/bash
    #           cd /home/ubuntu
    #          echo "<h1>Feito com terraform</h1>" > index.html
    #           nohup busybox httpd -f -p 8080 &
    #EOF
    tags = {
    Name = "Terraform e Ansible com pyhton3"
  }
} 

