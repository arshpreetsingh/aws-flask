variable "asg_sg_name" {
  description = "Name of the autoscaling group security group"
  type        = string
  default     = "demo-asg-sg"
}

variable "asg_sg_description" {
  description = "Description of the autoscaling group security group"
  type        = string
  default     = "demo-asg-sg"
}

variable "asg_sg_tags" {
  description = "Tags for autoscaling group security group"
  type        = map(string)
  default     = { "Name" = "demo-asg-sg", "created-by" = "terraform" }
}

variable "asg_name" {
  description = "Name of the autoscaling group"
  type        = string
  default     = "demo-asg"
}

variable "asg_min_size" {
  description = "Auto scaling minimum size"
  type        = number
  default     = 0
}

variable "asg_max_size" {
  description = "Auto scaling maximum size"
  type        = number
  default     = 1
}

variable "asg_desired_capacity" {
  description = "Auto scaling desired capacity"
  type        = number
  default     = 1
}

variable "asg_wait_for_capacity_timeout" {
  description = "Auto scaling wait for capacity timeout"
  type        = number
  default     = 0
}

variable "asg_health_check_type" {
  description = "Auto scaling health check type"
  type        = string
  default     = "EC2"
}

variable "asg_launch_template_name" {
  description = "Name of the autoscaling group launch template"
  type        = string
  default     = "demo-lt"
}

variable "asg_launch_template_description" {
  description = "Description of the autoscaling group security group"
  type        = string
  default     = "demo-lt"
}

variable "asg_update_default_version" {
  description = "Auto scaling group update default version"
  type        = bool
  default     = true
}

variable "asg_image_id" {
  description = "Auto scaling group image id"
  type        = string
  default     = "ami-026b57f3c383c2eec"
}

variable "asg_instance_type" {
  description = "Auto scaling group instance type"
  type        = string
  default     = "t3.micro"
}

variable "asg_ebs_optimized" {
  description = "Auto scaling group ebs optimized"
  type        = bool
  default     = true
}

variable "asg_enable_monitoring" {
  description = "Auto scaling group enable monitoring"
  type        = bool
  default     = true
}

variable "asg_create_iam_instance_profile" {
  description = "Auto scaling group create iam instance profile"
  type        = bool
  default     = true
}

variable "asg_iam_role_name" {
  description = "Auto scaling group iam role name"
  type        = string
  default     = "demo-asg-iam-role"
}

variable "asg_iam_role_path" {
  description = "Auto scaling group iam role path"
  type        = string
  default     = "/ec2/"
}

variable "asg_iam_role_description" {
  description = "Auto scaling group iam role description"
  type        = string
  default     = "demo-asg-iam-role"
}

variable "asg_iam_role_tags" {
  description = "Auto scaling group iam role tags"
  type        = map(string)
  default     = { "Name" = "demo-asg-iam-role", "created-by" = "terraform" }
}

variable "asg_block_device_mappings_volume_size_0" {
  description = "Auto scaling group block device mapping volume size 0"
  type        = number
  default     = 20
}

variable "asg_block_device_mappings_volume_size_1" {
  description = "Auto scaling group block device mapping volume size 1"
  type        = number
  default     = 30
}

variable "asg_instance_tags" {
  description = "Auto scaling group instance tags"
  type        = map(string)
  default     = { "Name" = "demo-asg-instance", "created-by" = "terraform" }
}

variable "asg_volume_tags" {
  description = "Auto scaling group volume tags"
  type        = map(string)
  default     = { "Name" = "demo-asg-volume", "created-by" = "terraform" }
}

variable "asg_tags" {
  description = "Auto scaling group tags"
  type        = map(string)
  default     = { "Name" = "demo-asg", "created-by" = "terraform" }
}

variable "vpc_id" {
  type = string
}

variable "security_group_id" {
  type = string
}

variable "vpc_public_subnets" {
  description = "List of public subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24"]
}

variable "vpc_zone_identifier" {
  description = "List of private subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}