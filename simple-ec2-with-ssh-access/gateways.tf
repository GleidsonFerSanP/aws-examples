resource "aws_internet_gateway" "example-gw" {
  vpc_id = "${aws_vpc.example-vpc.id}"
}
