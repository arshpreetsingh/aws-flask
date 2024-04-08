# Region

variable "region" {
  description = "aws region"
  type        = string
  default     = "us-east-1"
}

# VPC Configuration

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "demo-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "List of AZs"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_public_subnets" {
  description = "List of public subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}

variable "vpc_private_subnets" {
  description = "List of private subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "vpc_database_subnets" {
  description = "List of database subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.21.0/24", "10.0.22.0/24", "10.0.23.0/24"]
}

variable "vpc_tags" {
  description = "Tags to apply to vpc peering for api x data vpc"
  type        = map(string)
  default     = { "Name" = "demo-vpc", "created-by" = "terraform" }
}




# ASG Configuration
variable "asg_sg_name" {
  type        = string
  default     = "demo-asg-sg"
}

variable "asg_sg_description" {
  type        = string
  default     = "demo-asg-sg"
}

variable "asg_sg_tags" {
  type        = map(string)
  default     = { "Name" = "demo-asg-sg", "created-by" = "terraform" }
}

variable "asg_name" {
  type        = string
  default     = "demo-asg"
}


variable "asg_min_size" {
  type        = number
  default     = 0
}

variable "asg_max_size" {
  type        = number
  default     = 2
}

variable "asg_desired_capacity" {
  type        = number
  default     = 2
}

variable "asg_wait_for_capacity_timeout" {
  type        = string 
  default     = "0" # Timeout in minutes as a string
}

variable "asg_health_check_type" {
  type        = string
  default     = "EC2"
}



# ALB Configuration
variable "alb_sg_name" {
  type        = string
  default     = "demo-alb-sg"
}

variable "alb_sg_ingress_cidr_blocks" {
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "alb_sg_description" {
  type        = string
  default     = "demo-alb-sg"
}

variable "alb_sg_tags" {
  type        = map(string)
  default     = { "Name" = "demo-alb-sg", "created-by" = "terraform" }
}

variable "alb_name" {
  type        = string
  default     = "demo-alb"
}


variable "alb_http_tcp_listeners_port" {
  type        = number
  default     = 80
}

variable "alb_target_group_name" {
  type        = string
  default     = "demo-alb-tg"
}

variable "alb_target_groups_backend_port" {
  type        = number
  default     = 80
}

variable "alb_tags" {
  type        = map(string)
  default     = { "Name" = "demo-alb", "created-by" = "terraform" }
}


# RDS Configuration
variable "rds_sg_name" {
  type        = string
  default     = "demo-rds-sg"
}

variable "rds_sg_description" {
  type        = string
  default     = "demo-rds-sg"
}

variable "rds_sg_tags" {
  type        = map(string)
  default     = { "Name" = "demo-rds-sg", "created-by" = "terraform" }
}

variable "rds_identifier" {
  type        = string
  default     = "demo-rds"
}

variable "rds_mysql_engine" {
  type        = string 
  default     = "mysql"
}

variable "rds_engine_version" {
  type        = string
  default     = "8.0"
}

variable "rds_family" {
  type        = string
  default     = "mysql8.0"
}

variable "rds_major_engine_version" { 
  type        = string
  default     = "8.0"
}

variable "rds_instance_class" {
  type        = string
  default     = "db.t3.small"
}

variable "rds_allocated_storage" {
  type        = number
  default     = 20
}

variable "rds_max_allocated_storage" {
  type        = number
  default     = 100
}

variable "rds_db_name" {
  type        = string
  default     = "demo_mysql"
}

variable "rds_username" {
  type        = string
  default     = "demo_user"
}

variable "rds_port" {
  type        = number
  default     = 3306 
}

variable "rds_multi_az" {
  type        = bool
  default     = false
}
# ... Other RDS variables
