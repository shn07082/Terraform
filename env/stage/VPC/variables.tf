# Local Variable 정의
locals {
  cidr            = "192.168.0.0/16"
  azs             = ["ap-northeast-2a", "ap-northeast-2c"]
  public_subnet   = ["192.168.1.0/24", "192.168.2.0/24"]
  private_subnets = ["192.168.10.0/24", "192.168.20.0/24"]
  cache_subnets   = ["192.168.30.0/24", "192.168.40.0/24"]
  db_subnets      = ["192.168.50.0/24", "192.168.60.0/24"]
  ssh_port        = 22
  any_port        = 0
  any_protocol    = "-1"
  tcp_protocol    = "tcp"
  icmp_protocol   = "icmp"
  all_network     = "0.0.0.0/0"

  cache_subnet_group_name = "Redis-subnet-group"
}
