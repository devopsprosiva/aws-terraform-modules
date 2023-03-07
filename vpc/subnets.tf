resource "aws_subnet" "public_subnets" {
  count      = length(var.public_subnet_cidrs)
  vpc_id     = aws_vpc.vpc.id
  cidr_block = element(var.public_subnet_cidrs, count.index)

  tags = {
    "Name" = "public_subnet_${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnets" {
  count      = length(var.private_subnet_cidrs)
  vpc_id     = aws_vpc.vpc.id
  cidr_block = element(var.private_subnet_cidrs, count.index)

  tags = {
    "Name" = "private_subnet_${count.index + 1}"
  }
}
