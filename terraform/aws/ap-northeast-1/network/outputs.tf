output "default_vpc_id" {
  value = "${aws_default_vpc.default.id}"
}

output "default_subnet_a_id" {
  value = "${aws_subnet.default_a.id}"
}

output "default_subnet_b_id" {
  value = "${aws_subnet.default_b.id}"
}

output "default_subnet_c_id" {
  value = "${aws_subnet.default_c.id}"
}

output "private_subnet_a_id" {
  value = "${aws_subnet.private_a.id}"
}
