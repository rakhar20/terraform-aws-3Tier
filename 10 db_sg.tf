resource "aws_security_group" "database-security-group"{
    name = "db-SG"
    vpc_id = aws_vpc.vpc_1.id

    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        security_groups = [ "${aws_security_group.web-sg.id}"]
    }

    egress {
        from_port = 0
        to_port = 0 
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "database Security group"
    }
}