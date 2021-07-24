variable "region" {
    description = "region where resources will creating"
    type = string
    default = "eu-central-1"
}


variable "az_count" {
    description = "Required Availability Zone Count"
    default = "2"
}

variable "prefix" {
    description = "prefix for names/tags"
    type = string
    default = "andersen-exam-"
}



variable "app_port" {
    description = "Port where application exopsed by container"
    default = "8000"
}

variable "vpc_cidr" {
    description = "cidr block for vpc"
    type = string
    default = "10.0.20.0/16"
}


variable "fargate_cpu" {
    description = "Amount of CPU required for the task"
    type = number
    default = 256
}

variable "fargate_memory" {
    type = number
    default = 256
    description = "Amount of memory required for task"
}


