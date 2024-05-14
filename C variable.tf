variable "vpc_cidr" {
    description = "cidr block for vpc"
    default = "10.0.0.0/16"
    type = string
}

variable "public-web-subnet-1-cidr" {
    description = "cidr block 1 for web subnet"
    default = "10.0.1.0/24"
    type = string
}

variable "public-web-subnet-2-cidr" {
    description = "cidr block 2 for web subnet"
    type = string
    default = "10.0.2.0/24"
}

variable "private-app-subnet-1-cidr" {
    description = "cidr block 1 for app subnet"
    default = "10.0.3.0/24"
    type = string
}

variable "private-app-subnet-2-cidr" {
    description = "cidr block 2 for app subnet"
    default = "10.0.4.0/24"
    type = string
}

variable "private-db-subnet-1-cidr" {
    description = "cidr block 1 for database subnet"
    default = "10.0.5.0/24"
    type = string
}

variable "private-db-subnet-2-cidr" {
    description = "cidr block 2 for database subnet"
    default = "10.0.6.0/24"
    type = string
}

variable "ssh-locate" {
    description = "your ip address to access ssh"
    type = string
}

variable "database-instance-class" {
    description = "class of database instance"
    default = "db.t2.micro"
    type = string
}

variable "multi-az-deployment" {
    description = "for database instance, true if you want to deploy it on multiple availability zones else false"
    default = true
    type = bool
}

variable "ins_type" {
    description = "inatance type"
    default = "t2.micro"
    type = string
}

# variable "bucket_name" {
#     description = "for database instance"
#     type = string
# }

# variable "region" {
# type = string
# }

variable "secret_key"{
    description = "secret key for your iam user"
    type = string
}

variable "access_key"{
    description = "access key for your iam user"
    type = string
}

variable "your_bucket_name_for_backend"{
    description = "for backend"
    type = string
}
#####



# variable "your_bucket_region_for_backend"{
#     description = "bucket region for backend"
#     type = string
# }
# variable "image_id" {
#     type = string
# }
