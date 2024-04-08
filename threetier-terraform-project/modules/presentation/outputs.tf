
################################################################################
# Application load balancer (ALB) outputs
################################################################################

output "alb_security_group_id" {
  description = "The ID of the security group"
  value       = module.alb_http_sg.security_group_id
}

output "alb_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.alb_http_sg.security_group_vpc_id
}

output "alb_security_group_owner_id" {
  description = "The owner ID"
  value       = module.alb_http_sg.security_group_owner_id
}

output "alb_security_group_name" {
  description = "The name of the security group"
  value       = module.alb_http_sg.security_group_name
}

output "alb_security_group_description" {
  description = "The description of the security group"
  value       = module.alb_http_sg.security_group_description
}
output "lb_id" {
  description = "The ID and ARN of the load balancer we created."
  value       = module.alb.lb_id
}

output "lb_arn" {
  description = "The ID and ARN of the load balancer we created."
  value       = module.alb.lb_arn
}

output "lb_dns_name" {
  description = "The DNS name of the load balancer."
  value       = module.alb.lb_dns_name
}

output "lb_arn_suffix" {
  description = "ARN suffix of our load balancer - can be used with CloudWatch."
  value       = module.alb.lb_arn_suffix
}

output "lb_zone_id" {
  description = "The zone_id of the load balancer to assist with creating DNS records."
  value       = module.alb.lb_zone_id
}

output "http_tcp_listener_arns" {
  description = "The ARN of the TCP and HTTP load balancer listeners created."
  value       = module.alb.http_tcp_listener_arns
}

output "http_tcp_listener_ids" {
  description = "The IDs of the TCP and HTTP load balancer listeners created."
  value       = module.alb.http_tcp_listener_ids
}

output "https_listener_arns" {
  description = "The ARNs of the HTTPS load balancer listeners created."
  value       = module.alb.https_listener_arns
}

output "https_listener_ids" {
  description = "The IDs of the load balancer listeners created."
  value       = module.alb.https_listener_ids
}