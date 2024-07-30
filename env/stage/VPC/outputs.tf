output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.stage_vpc.vpc_id
}

output "public_subnet_ids" {
  description = "The IDs of the public subnets"
  value       = module.stage_vpc.public_subnets
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = module.stage_vpc.private_subnets
}

output "database_subnet_ids" {
  description = "The IDs of the database subnets"
  value       = module.stage_vpc.database_subnets
}

output "cache_subnets" {
  description = "The IDs of the elasticache_subnets"
  value       = module.stage_vpc.cache_subnets
}

output "private_subnets" {
  description = "The private subnets CIDR blocks"
  value       = module.stage_vpc.private_subnets_cidr_blocks
}
