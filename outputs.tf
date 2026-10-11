output "network_services_tls_routes_id" {
  description = "Map of id values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no id are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_services_tls_routes_create_time" {
  description = "Map of create_time values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no create_time are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "network_services_tls_routes_deletion_policy" {
  description = "Map of deletion_policy values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no deletion_policy are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "network_services_tls_routes_description" {
  description = "Map of description values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no description are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_services_tls_routes_gateways" {
  description = "Map of gateways values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no gateways are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.gateways if v.gateways != null && length(v.gateways) > 0 }
}
output "network_services_tls_routes_location" {
  description = "Map of location values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no location are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.location if v.location != null && length(v.location) > 0 }
}
output "network_services_tls_routes_meshes" {
  description = "Map of meshes values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no meshes are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.meshes if v.meshes != null && length(v.meshes) > 0 }
}
output "network_services_tls_routes_name" {
  description = "Map of name values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no name are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_services_tls_routes_project" {
  description = "Map of project values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no project are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.project if v.project != null && length(v.project) > 0 }
}
output "network_services_tls_routes_rules" {
  description = "Map of rules values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no rules are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.rules if v.rules != null && length(v.rules) > 0 }
}
output "network_services_tls_routes_self_link" {
  description = "Map of self_link values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no self_link are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "network_services_tls_routes_target_proxies" {
  description = "Map of target_proxies values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no target_proxies are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.target_proxies if v.target_proxies != null && length(v.target_proxies) > 0 }
}
output "network_services_tls_routes_update_time" {
  description = "Map of update_time values across all network_services_tls_routes, keyed the same as var.network_services_tls_routes except keys with no update_time are omitted"
  value       = { for k, v in google_network_services_tls_route.network_services_tls_routes : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

