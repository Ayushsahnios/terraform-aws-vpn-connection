output "vpn_gateway_id" {
  description = "ID of the Virtual Private Gateway (VGW)"
  value       = module.vpn_connection.vpn_gateway_id
}

output "vpn_connection_id" {
  description = "ID of the VPN Connection"
  value       = module.vpn_connection.vpn_connection_id
}

output "customer_gateway_id" {
  description = "ID of the Customer Gateway"
  value       = module.vpn_connection.customer_gateway_id
}

output "vpn_connection_tunnel1_address" {
  description = "The public IP address of the first VPN tunnel"
  value       = module.vpn_connection.vpn_connection_tunnel1_address
}

output "vpn_connection_tunnel2_address" {
  description = "The public IP address of the second VPN tunnel"
  value       = module.vpn_connection.vpn_connection_tunnel2_address
}
