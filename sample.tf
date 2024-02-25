# provider "aws" {

# }

# #create a vpc
# resource "aws_vpc" "my_vpc" {
#        cidr_block = "10.0.0.0/16"
  
# }

# #create a public subnet

# resource "aws_subnet" "public_subnet" {
#       vpc_id = aws_vpc.my_vpc.id
#       cidr_block = "10.0.1.0/24"
# }

# #create a private subnet
# resource "aws_subnet" "private_subnet" {
#        vpc_id = aws_vpc.my_vpc.id
#        cidr_block = "10.0.2.0/24"
  
# }

# #create an internetgw
# resource "aws_internet_gateway" "mygw" {
#        vpc_id = aws_vpc.my_vpc.id
# }



# #sgrule
# resource "aws_security_group" "tdev-sg" {
#        vpc_id = aws_vpc.my_vpc.id

#        ingress {
#               from_port = 22
#               to_port = 22
#               protocol = "tcp"
#               cidr_blocks = ["0.0.0.0/0"]
#        } 

#        egress {
#               from_port = 0
#               to_port = 0 
#               protocol = "-1"
#               cidr_blocks = ["0.0.0.0/0"]
#        }
# }

# variable "list" {
#        type = list
#        default = ["m5.large", "m5.xlarge", "t2.medium"]
# }

# variable "maps" {
#        type = map
#        default = {
#               us-east-1 = "t2.medium"
#               us-west-2 = "t2.nano"
#               ap-south-1 = "t2.small"
#        }
# }
# variable "test" {}

# resource "aws_instance" "dev" {
#         ami = "ami-0c7217cdde317cfec"
#         instance_type = "t2.micro"
#         count = var.test == true ? 3 : 0
# }

# resource "aws_instance" "prod" {
#         ami = "ami-0c7217cdde317cfec"
#         instance_type = "t2.large"
#         count = var.test == false ? 2 : 0

  
# }






