#Create a VPC
resource "aws_vpc" "example-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
}
resource "aws_eip" "ip_example" {
  instance = "${aws_instance.ec2-example.id}"
  vpc      = true
}
