variable "region" {
    description = "region where resources will creating"
    type = string
    default = "eu-central-1"
}


variable "prefix" {
    description = "prefix for names/tags"
    type = string
    default = "andersen-exam-"
}


variable "vpc_cidr" {
    description = "cidr block for vpc"
    type = string
    default = "10.0.0.0/16"
}


variable "key_name" {
    description = "name of ssh key"
    type = string
    default = "my_key"
}