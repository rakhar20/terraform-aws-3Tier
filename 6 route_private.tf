resource "aws_route_table" "private-route-table" {
    vpc_id = aws_vpc.vpc_1.id

    route {
        cidr_block = "0.0.0.0/0"  # Route all traffic to the NAT Gateway
        nat_gateway_id = aws_nat_gateway.nat_1.id
    }

    tags = {
        Name = "private Route table"
    }
}

# Route table association for the application tier subnet 1 #
resource "aws_route_table_association" "nat_route_1" {
    subnet_id = aws_subnet.private-app-subnet-1.id
    route_table_id = aws_route_table.private-route-table.id
}

# Route table association for the application tier subnet 2 #
resource "aws_route_table_association" "nat_route_2" {
    subnet_id = aws_subnet.private-app-subnet-2.id
    route_table_id = aws_route_table.private-route-table.id
}

# Route table association for the database tier subnet 1 #
resource "aws_route_table_association" "nat_route_db_1" {
    subnet_id = aws_subnet.private-db-subnet-1.id
    route_table_id = aws_route_table.private-route-table.id
}

# Route table association for the database tier subnet 2 #
resource "aws_route_table_association" "nat_route_db_2" {
    subnet_id = aws_subnet.private-db-subnet-2.id
    route_table_id = aws_route_table.private-route-table.id
}