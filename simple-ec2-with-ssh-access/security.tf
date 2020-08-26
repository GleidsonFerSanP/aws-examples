
# create security group to ssh access
resource "aws_security_group" "security-group-example-allow-ssh" {
  name = "allow_ssh"

  vpc_id = "${aws_vpc.example-vpc.id}"

  #ports in
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  #ports out
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
