variable "project_name" {
    type=string
}

variable "Environment" {
    type = string
    default = "Dev"
  
}

variable "sg_name" {
    type=string
  
}

variable "sg_description" {
    type=string
  
}

variable "vpc_id" {
    type=string
  
}

variable "common_tags" {
    type=map 
}

variable "sg_tags" {
    type=string
    default = {}
  
}

variable "outbound_rules" {
    type=list
     default = [
       { from_port=0
        to_port=0
        protocol="-1"
        cidr_block=["0.0.0.0/0"]
       }
     ]
}

variable "inbound_rules" {
    type=list
     default =[]
}