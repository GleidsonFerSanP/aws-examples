

# # Create a instance EC2
# resource "aws_instance" "ec2_example" {
#   ami             = "ami-0bcc094591f354be2" //Ubuntu Server 18.04 LTS (HVM), SSD Volume Type
#   instance_type   = "t2.micro"
#   key_name        = "aws_key_pair.key_example.key_name"
#   security_groups = ["${aws_security_group.security_group_example_allow_ssh.name}"]
# }

# # create key pair to my host ssh key
# resource "aws_key_pair" "key_example" {
#   key_name   = "id_rsa"
#   public_key = file("~/.ssh/id_rsa.pem")
# }




output "print_public_dns" {
  value = "${aws_instance.ec2-example.public_dns}"
}
