
# PUBLIC SUBNET #

resource "aws_subnet" "public-web-subnet-1" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.public-web-subnet-1-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public subnet 1"
  }
}

resource "aws_subnet" "public-web-subnet-2" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.public-web-subnet-2-cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public subnet 2"
  }
}

# PRIVATE SUBNET A #

resource "aws_subnet" "private-app-subnet-1" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.private-app-subnet-1-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private Subnet 1 | app tier"
  }
}

resource "aws_subnet" "private-app-subnet-2" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.private-app-subnet-2-cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private Subnet 2 | app tier"
  }
}

# PRIVATE SUBNET B #

resource "aws_subnet" "private-db-subnet-1" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.private-db-subnet-1-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private Subnet 1 | db tier"
  }
}

resource "aws_subnet" "private-db-subnet-2" {
  vpc_id                  = aws_vpc.vpc_1.id
  cidr_block              = var.private-db-subnet-2-cidr
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name = "Private Subnet 2 | db tier"
  }
}
