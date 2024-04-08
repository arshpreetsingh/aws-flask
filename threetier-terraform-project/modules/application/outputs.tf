################################################################################
# Auto scaling group (ASG) outputs
################################################################################

################################################################################
# ASG - Autoscaling group
################################################################################

################################################################################
# Launch template only
################################################################################

output "launch_template_only_launch_template_id" {
  description = "The ID of the launch template"
  value       = module.asg.launch_template_id
}

output "launch_template_only_launch_template_arn" {
  description = "The ARN of the launch template"
  value       = module.asg.launch_template_arn
}

output "launch_template_only_launch_template_name" {
  description = "The name of the launch template"
  value       = module.asg.launch_template_name
}

output "launch_template_only_launch_template_latest_version" {
  description = "The latest version of the launch template"
  value       = module.asg.launch_template_latest_version
}

output "launch_template_only_launch_template_default_version" {
  description = "The default version of the launch template"
  value       = module.asg.launch_template_default_version
}


################################################################################
# Autoscaling group
################################################################################

output "asg_launch_template_id" {
  description = "The ID of the launch template"
  value       = module.asg.launch_template_id
}

output "asg_launch_template_arn" {
  description = "The ARN of the launch template"
  value       = module.asg.launch_template_arn
}

output "asg_launch_template_name" {
  description = "The name of the launch template"
  value       = module.asg.launch_template_name
}

output "asg_launch_template_latest_version" {
  description = "The latest version of the launch template"
  value       = module.asg.launch_template_latest_version
}

output "asg_launch_template_default_version" {
  description = "The default version of the launch template"
  value       = module.asg.launch_template_default_version
}

output "asg_autoscaling_group_id" {
  description = "The autoscaling group id"
  value       = module.asg.autoscaling_group_id
}

output "asg_autoscaling_group_name" {
  description = "The autoscaling group name"
  value       = module.asg.autoscaling_group_name
}

output "asg_autoscaling_group_arn" {
  description = "The ARN for this AutoScaling Group"
  value       = module.asg.autoscaling_group_arn
}

output "asg_autoscaling_group_min_size" {
  description = "The minimum size of the autoscale group"
  value       = module.asg.autoscaling_group_min_size
}

output "asg_autoscaling_group_max_size" {
  description = "The maximum size of the autoscale group"
  value       = module.asg.autoscaling_group_max_size
}

output "asg_autoscaling_group_desired_capacity" {
  description = "The number of Amazon EC2 instances that should be running in the group"
  value       = module.asg.autoscaling_group_desired_capacity
}

output "asg_autoscaling_group_default_cooldown" {
  description = "Time between a scaling activity and the succeeding scaling activity"
  value       = module.asg.autoscaling_group_default_cooldown
}

output "asg_autoscaling_group_health_check_grace_period" {
  description = "Time after instance comes into service before checking health"
  value       = module.asg.autoscaling_group_health_check_grace_period
}

output "asg_autoscaling_group_health_check_type" {
  description = "EC2 or ELB. Controls how health checking is done"
  value       = module.asg.autoscaling_group_health_check_type
}

output "asg_autoscaling_group_availability_zones" {
  description = "The availability zones of the autoscale group"
  value       = module.asg.autoscaling_group_availability_zones
}

output "asg_autoscaling_group_vpc_zone_identifier" {
  description = "The VPC zone identifier"
  value       = module.asg.autoscaling_group_vpc_zone_identifier
}

output "asg_autoscaling_group_load_balancers" {
  description = "The load balancer names associated with the autoscaling group"
  value       = module.asg.autoscaling_group_load_balancers
}

output "asg_autoscaling_group_target_group_arns" {
  description = "List of Target Group ARNs that apply to this AutoScaling Group"
  value       = module.asg.autoscaling_group_target_group_arns
}

output "asg_autoscaling_schedule_arns" {
  description = "ARNs of autoscaling group schedules"
  value       = module.asg.autoscaling_schedule_arns
}

output "asg_autoscaling_policy_arns" {
  description = "ARNs of autoscaling policies"
  value       = module.asg.autoscaling_policy_arns
}

output "asg_autoscaling_group_enabled_metrics" {
  description = "List of metrics enabled for collection"
  value       = module.asg.autoscaling_group_enabled_metrics
}

output "asg_iam_role_name" {
  description = "The name of the IAM role"
  value       = module.asg.iam_role_name
}

output "asg_iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role"
  value       = module.asg.iam_role_arn
}

output "asg_iam_role_unique_id" {
  description = "Stable and unique string identifying the IAM role"
  value       = module.asg.iam_role_unique_id
}

output "asg_iam_instance_profile_arn" {
  description = "ARN assigned by AWS to the instance profile"
  value       = module.asg.iam_instance_profile_arn
}

output "asg_iam_instance_profile_id" {
  description = "Instance profile's ID"
  value       = module.asg.iam_instance_profile_id
}

output "asg_iam_instance_profile_unique" {
  description = "Stable and unique string identifying the IAM instance profile"
  value       = module.asg.iam_instance_profile_unique
}

################################################################################
# Security group
################################################################################
output "security_group_id" {
  description = "The ID of the security group"
  value       = module.asg_sg.security_group_id
}

output "security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.asg_sg.security_group_vpc_id
}

output "security_group_owner_id" {
  description = "The owner ID"
  value       = module.asg_sg.security_group_owner_id
}

output "security_group_name" {
  description = "The name of the security group"
  value       = module.asg_sg.security_group_name
}

output "security_group_description" {
  description = "The description of the security group"
  value       = module.asg_sg.security_group_description
}