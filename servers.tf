# create key pair to my host ssh key
resource "aws_key_pair" "key-example" {
  key_name   = "id_rsa"
  public_key = file("~/.ssh/id_rsa.pub")
}


resource "aws_instance" "ec2-example" {
  ami             = "ami-0bcc094591f354be2" //Ubuntu Server 18.04 LTS (HVM), SSD Volume Type
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.key-example.key_name}"
  security_groups = ["${aws_security_group.security-group-example-allow-ssh.id}"]
  subnet_id       = "${aws_subnet.subnet-example.id}"
}
