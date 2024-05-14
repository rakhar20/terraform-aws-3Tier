# ASG FOR WEB LAYER #

resource "aws_launch_template" "auto-scaling-group" {
    name_prefix = "autoscaling-group"
    image_id = data.aws_ami.ami.id
    instance_type = var.ins_type
    user_data = file("${path.module}/install-apache.sh")
    
    network_interfaces {
        subnet_id = aws_subnet.public-web-subnet-1.id
        security_groups = [aws_security_group.web-sg.id]
    }
}

resource "aws_autoscaling_group" "asg-1" {
    availability_zones = ["us-east-1a", "us-east-1b"]
    desired_capacity = 1
    max_size = 2
    min_size = 1
    launch_template {
        id = aws_launch_template.auto-scaling-group.id
        version = "$latest"
    }
}

# ASG FOR APP LAYER #

resource "aws_launch_template" "auto-scaling-group-private" {
    name_prefix = "autoscaling-group-private"
    image_id = data.aws_ami.ami.id
    instance_type = var.ins_type
    key_name = "source_key"

    network_interfaces {
        subnet_id = aws_subnet.private-app-subnet-1.id
        security_groups = [aws_security_group.ssh-security-group.id]
    }
}

resource "aws_autoscaling_group" "asg-2" {
    availability_zones = ["us-east-1a", "us-east-1b"]
    desired_capacity = 1
    max_size = 2
    min_size = 1
    launch_template {
        id = aws_launch_template.auto-scaling-group-private.id
        version = "$latest"
    }
}