provider "aws" {
    
  
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

# variable "region" {
#     default = "ap-south-1"
# }

# variable "tags" {
#     type = list
#     default = ["1-ec2","2-ec2"]
# }
# variable "ami" {
#     type = map
#        default = {
#               us-east-1 = "ami-07761f3ae34c4478d"
#               us-west-2 = "ami-0c7f9161f8491665f"
#               ap-south-1 = "ami-0ed547d7a23441118"
#        }
    
  
# }
# resource "aws_instance" "dev" {
#         ami = lookup(var.ami,var.region)
#         instance_type = "t2.small"
#         count = 2

#         tags = {
#             Name = element(var.tags,count.index)
#         }
# }
# variable "sg_ingress" {
#     type = list(number)
#     default = [ 22, 80, 443, 8080, 8081, 9200, 9500 ] 
# }
#  resource "aws_security_group" "tdev-sg" {
#            name = "dynamic-sg"

#       dynamic "ingress" {
#         for_each = var.sg_ingress
#        # iterator = port  "use it for iteration index and change the value to 'port.value in content"
#         content {
#           from_port = ingress.value
#           to_port = ingress.value
#           protocol = "tcp"
#           cidr_blocks = ["0.0.0.0/0"]
#         }
        
#       }

# }

resource "aws_instance" "dev1" {
        ami = "ami-07761f3ae34c4478d"
        instance_type = "t2.small"
        key_name = "raju1603"
        # depends_on = [ null_resource.ping ]  "use only when declared the null resourcce block with a provisoner"
}   

# resource "null_resource" "ping" {
#      provisioner "local-exec" {
#         command = "curl https://google2347jhvsrgwkrj.com"
       
#      }
   
#  }



    # provisioner "local-exec" {
    #     command = "echo ${aws_instance.dev.private_ip} >> private_ip.txt"
      
    # }

    # connection {
    #    type     = "ssh"
    #    user     = "ec2-user"
    #    private_key = file("./raju1603.pem")
    #    host     = self.public_ip
    # }

    # provisioner "file" {
    #     source      = "./index.html"
    #     destination = "/tmp/index.html"
    # }

    # provisioner "remote-exec" {
    #     inline = [ 
    #         "sudo amazon-linux-extras install -y nginx1",
    #         "sudo rm -rf /usr/share/nginx/html/index.html",
    #         "sudo cp -r /tmp/index.html /usr/share/nginx/html/",
    #         "sudo systemctl start nginx",
    #      ]
      
    # }

