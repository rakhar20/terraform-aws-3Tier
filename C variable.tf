variable "vpc_cidr" {
    default = "10.0.0.0/16"
    type = string
}

variable "public-web-subnet-1-cidr" {
    default = "10.0.1.0/24"
    type = string
}

variable "public-web-subnet-2-cidr" {
    type = string
    default = "10.0.2.0/24"
}

variable "private-app-subnet-1-cidr" {
    default = "10.0.3.0/24"
    type = string
}

variable "private-app-subnet-2-cidr" {
    default = "10.0.4.0/24"
    type = string
}

variable "private-db-subnet-1-cidr" {
    default = "10.0.5.0/24"
    type = string
}

variable "private-db-subnet-2-cidr" {
    default = "10.0.6.0/24"
    type = string
}

variable "ssh-locate" {
    default = "152.58.59.6"
    type = string
}

variable "database-instance-class" {
  default = "db.t2.micro"
  type = string
}

variable "multi-az-deployment" {
  default = true
  type = bool
}

variable "ins_type" {
    default = "t2.micro"
    type = string
}

variable "bucket_name" {
    type = string
}

variable "region" {
type = string
}

variable "var.secret_key"{
    type = string
}

variable "var.access_key"{
    type = string
}
# variable "image_id" {
#     type = string
# }