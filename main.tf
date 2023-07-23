module "vpc" {
  source = "git::https://github.com/henrique-sulimann/terraform-aws-vpc.git//?ref=v1.0.0"
  region                               = "us-east-1"
  vpc_cidr_block                       = "10.0.0.0/16"
  vpc_name                             = "dev_vpc"
  enable_dns_hostnames                 = false
  assign_generated_ipv6_cidr_block     = false
  enable_network_address_usage_metrics = false
  public_subnet_list = {
    "snt-01" = {
      cidr_block        = "10.0.1.0/24"
      availability_zone = "us-east-1a"
      tags = {
        Name = "public-snt01"
      }
    },
    "snt-02" = {
      cidr_block        = "10.0.2.0/24"
      availability_zone = "us-east-1b"
      tags = {
        Name = "public-snt02"
      }
    },
  }
  public_routes = {
    "public-rt01" = {
      cidr_block = ["1.1.1.1/32", "2.2.2.2/32"]
      tags = {
        Name = "public-rt01"
      }
    }
  }
  private_subnet_list = {
    "snt-01" = {
      cidr_block        = "10.0.3.0/24"
      availability_zone = "us-east-1a"
      tags = {
        Name = "private-snt01"
      }
    },
    "snt-02" = {
      cidr_block        = "10.0.4.0/24"
      availability_zone = "us-east-1b"
      tags = {
        Name = "private-snt02"
      }
    },
  }
  private_routes = {
    "private-rt01" = {
      cidr_block = ["1.1.1.1/32", "2.2.2.2/32"]
      tags = {
        Name = "private-rt01"
      }
    }
  }
}