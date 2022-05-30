# provider "aws" {
#     region = "us-east-1"  
# }
# resource "aws_security_group" "instancesecurity" {
#     name = "reena_sg"  
#     vpc_id = "${aws_vpc.reenavpc.id}"
# }
# resource "aws_vpc" "reenavpc" {
#     cidr_block = "192.168.0.0/16"
#     tags = {
#       "Name" = "reenavpc"
#     }
# }
  
# resource "aws_internet_gateway" "reenainternetgw" {
#     vpc_id = aws_vpc.reenavpc.id
#     tags = {
#       "Name" = "Terraform-IGW"
#     }
# }

# # resource "aws_route" "venkatassociate" {
# #     route_table_id = aws_vpc.venkatvpc.main_route_table_id
# #     destination_cidr_block = "0.0.0.0/0"
# #     gateway_id = aws_internet_gateway.venkatinternetgw.id
# # }

# resource "aws_security_group_rule" "reena-security-group" {
#     to_port = 22
#     from_port = 22
#     cidr_blocks =  ["0.0.0.0/0"]
#     security_group_id = "${aws_security_group.instancesecurity.id}"
#     protocol = "tcp"
#     type = "ingress"    
# }

# resource "aws_subnet" "reenasubnet" {
#     cidr_block = "192.168.1.0/24"
#     vpc_id = "${aws_vpc.reenavpc.id}"
#     availability_zone = "us-east-1b"
# }

# resource "aws_instance" "terraform-instance" {
#     ami = "ami-0022f774911c1d690"
#     instance_type = "t2.micro"
#     # key_name = "Reena"
#     subnet_id = "${aws_subnet.reenasubnet.id}"
#     associate_public_ip_address = "true"
#     vpc_security_group_ids = [aws_security_group.instancesecurity.id]
#     tags = {
#       "Name" = "Test_instance_Md5"
#     }

#     user_data = <<-EOF
#                 #!/bin/bash -xe
#                 exec > 
#                 aws s3 cp s3://tf-bt-md5-checksum/python_scripts/requirement.txt requirement.txt
#                 pip3 install -r requirement.txt
#                 aws s3 cp s3://tf-bt-md5-checksum/python_scripts/md5_checksum.py md5_checksum.py
#                 python3 md5_checksum.py
#                 yum update -y
#                 yum install -y httpd
#                 systemctl start httpd.service
#                 systemctl enable httpd.service
                
#                 EOF
# }