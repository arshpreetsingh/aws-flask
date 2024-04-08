# ALB variables
variable "alb_sg_name" {
  description = "Application load balancer security group name"
  type        = string
  default     = "test-alb-sg"
}

variable "alb_sg_ingress_cidr_blocks" {
  description = "Application load balancer cidr blocks"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "alb_sg_description" {
  description = "Application load balancer security group description"
  type        = string
  default     = "test-alb-sg"
}

variable "alb_sg_tags" {
  description = "Application load balancer security group tags"
  type        = map(string)
  default     = { "Name" = "test-alb-sg", "created-by" = "terraform" }
}

variable "alb_description" {
  description = "Application load balancer description"
  type        = string
  default     = "test-alb"
}

variable "alb_name" {
  description = "Application load balancer name"
  type        = string
  default     = "test-alb"
}

variable "alb_http_tcp_listeners_port" {
  description = "Application load balancer http listeners port"
  type        = number
  default     = 80
}

variable "alb_target_group_name" {
  description = "Application load balancer target group name"
  type        = string
  default     = "test-alb-tg"
}

variable "alb_target_groups_backend_port" {
  description = "Application load balancer http listeners port"
  type        = number
  default     = 80
}

variable "alb_tags" {
  description = "Application load balancer tags"
  type        = map(string)
  default     = { "Name" = "test-alb", "created-by" = "terraform" }
}

variable "vpc_id" {
  type = string
}


variable "public_subnets" {
  description = "List of public subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}