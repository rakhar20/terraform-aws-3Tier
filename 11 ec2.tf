resource "aws_instance" "publicweb" {
    ami = data.aws_ami.ami.id
    instance_type = var.ins_type
    subnet_id = aws_subnet.public-web-subnet-1.id
    vpc_security_group_ids = [aws_security_group.web-sg.id]
    key_name = "source-key"
    user_data = <<-EOF
        #!?bin/bash
        yum update-y
        yun installl -y httpd
        systemstl start httpd
        systemctl enable https 
        echo "<html><body><h1>Web tier"</h1></body></html>" > /var/www/html/index.html
    EOF
    tags = {
        Name = "web-asg"
    }
}

resource "aws_instance" "private-app-template" {
    ami= data.aws_ami.ami.id
    instance_type = var.ins_type
    subnet_id = aws_subnet.private-app-subnet-1.id
    vpc_security_group_ids =  [aws_security_group.ssh-security-group.id]
    key_name = "source_key"

    tags = {
        Name = "app-asg"
    }
}
