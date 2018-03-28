resource "aws_default_vpc" "default" {
  tags {
    Name = "Default VPC"
  }
}

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

resource "aws_subnet" "private_a" {
  vpc_id            = "${aws_default_vpc.default.id}"
  cidr_block        = "172.31.48.0/20"
  availability_zone = "${aws_subnet.default_a.availability_zone}"

  tags {
    Name = "Private Subnet A"
  }
}
