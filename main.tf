provider "aws" {
  region = "us-east-1"
}

module "vpn_connection" {
  source  = "cloudposse/vpn-connection/aws"
  version = "1.0.0"

  namespace   = "aspen"
  stage       = "prod"
  name        = "houston-vpn"

  vpc_id      = "vpc-07f655add39d57f3d"
  vpn_gateway_amazon_side_asn = 64512

  # Updated with your static IPv4 address:
  customer_gateway_ip_address = "73.32.116.164"
  customer_gateway_bgp_asn    = 65000

  route_table_ids = ["rtb-054d4a648bca53309"]

  vpn_connection_static_routes_only         = true
  vpn_connection_static_routes_destinations = ["10.0.1.0/24"]
}
