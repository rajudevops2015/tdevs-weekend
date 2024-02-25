provider "aws" {
    region = var.region
    
  
}

# locals {
#   comman_tags = {
#      owner = "infra team"
#      service = "frontend"
#   }
# }

# resource "aws_ebs_volume" "ft_db" {
#          availability_zone = "us-east-1a"
#          size = 8
#          tags = local.comman_tags
  
# }

# data "aws_ami" "avami" {
#     most_recent = true
#     owners = ["amazon"]

#     filter {
#       name = "name"
#       values = ["amzn2-ami-hvm*"]
#     }
# }

variable "region" {
    default = "ap-south-1"
}

variable "tags" {
    type = list
    default = ["1-ec2","2-ec2"]
}
variable "ami" {
    type = map
       default = {
              us-east-1 = "ami-07761f3ae34c4478d"
              us-west-2 = "ami-0c7f9161f8491665f"
              ap-south-1 = "ami-0ed547d7a23441118"
       }
    
  
}
resource "aws_instance" "dev" {
        ami = lookup(var.ami,var.region)
        instance_type = "t2.small"
        count = 2

        tags = {
            Name = element(var.tags,count.index)
        }
}
