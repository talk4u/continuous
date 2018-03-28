resource "aws_subnet" "default_a" {
  vpc_id     = "${aws_default_vpc.default.id}"
  cidr_block = "172.31.32.0/20"

  tags {
    Name = "Default Subnet A"
  }
}

resource "aws_subnet" "default_b" {
  vpc_id     = "${aws_default_vpc.default.id}"
  cidr_block = "172.31.16.0/20"

  tags {
    Name = "Default Subnet B"
  }
}

resource "aws_subnet" "default_c" {
  vpc_id     = "${aws_default_vpc.default.id}"
  cidr_block = "172.31.0.0/20"

  tags {
    Name = "Default Subnet C"
  }
}
