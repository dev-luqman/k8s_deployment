# Resource: aws_subnet
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet

resource "aws_subnet" "public_1" {
  # The VPC ID.
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet.
  cidr_block = var.public1_cidr_range

  # The AZ for the subnet.
  availability_zone = "${var.region}a"

  # Required for EKS. Instances launched into the subnet should be assigned a public IP address.
  map_public_ip_on_launch = true

  tags = {
    Name = "public-us-east-1a"
  }
}

resource "aws_subnet" "public_2" {
  # The VPC ID
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet.
  cidr_block = var.public2_cidr_range

  # The AZ for the subnet.
  availability_zone = "${var.region}b"

  # Required for EKS. Instances launched into the subnet should be assigned a public IP address.
  map_public_ip_on_launch = true

  tags = {
    Name = "public-us-east-1b"
  }
}

resource "aws_subnet" "private_1" {
  # The VPC ID
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet.
  cidr_block = var.private1_cidr_range

  # The AZ for the subnet.
  availability_zone = "${var.region}a"

  tags = {
    Name = "private-us-east-1a"
  }
}

resource "aws_subnet" "private_2" {
  # The VPC ID
  vpc_id = aws_vpc.main.id

  # The CIDR block for the subnet.
  cidr_block = var.private2_cidr_range

  # The AZ for the subnet.
  availability_zone = "${var.region}b"

  tags = {
    Name = "private-us-east-1b"
  }
}
