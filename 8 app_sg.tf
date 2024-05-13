resource "aws_security_group" "ssh-security-group" {
    name = "SSH access"
    vpc_id = aws_vpc.vpc_1.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks =["${var.ssh-locate}/32"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"] 
    }

    tags = {
        Name = "ssh SG"
    }
}