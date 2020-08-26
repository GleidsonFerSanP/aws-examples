//subnets.tf http://blog.itsjustcode.net/blog/2017/11/18/terraform-cidrsubnet-deconstructed/
resource "aws_subnet" "subnet-example" {
  cidr_block        = cidrsubnet(aws_vpc.example-vpc.cidr_block, 3, 1)
  vpc_id            = "${aws_vpc.example-vpc.id}"
  availability_zone = "us-east-1a"
}
resource "aws_route_table" "route-table-example" {
  vpc_id = "${aws_vpc.example-vpc.id}"
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.example-gw.id}"
  }
}
resource "aws_route_table_association" "subnet-association-example" {
  subnet_id      = "${aws_subnet.subnet-example.id}"
  route_table_id = "${aws_route_table.route-table-example.id}"
}
