resource "aws_route_table" "public-route-table" {
    vpc_id = aws_vpc.vpc_1.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    tags = {
        Name = "public route table"
    }
}

resource "aws_route_table_association" "public-subnet-1-route-table-association" {
    subnet_id = aws_subnet.public-web-subnet-1.id
    route_table_id = aws_route_table.public-route-table.id
}