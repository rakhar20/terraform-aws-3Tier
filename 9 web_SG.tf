resource "aws_security_group" "web-sg"{
    name = "web-sg"
    vpc_id = aws_vpc.vpc_1.id

    ingress{
        from_port = 80
        to_port = 80
        protocol = "tcp"
        security_groups = ["${aws_security_group.alb-security-group.id}"]
    }
    ingress{
        from_port = 443
        to_port = 443
        protocol = "tcp"
        security_groups = ["${aws_security_group.alb-security-group.id}"]
    }
    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        security_groups = ["${aws_security_group.ssh-security-group.id}"]
    }

    egress {
        from_port = 0 
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "web server SG"
    }
}