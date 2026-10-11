resource "google_network_services_tls_route" "network_services_tls_routes" {
  for_each = var.network_services_tls_routes

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  gateways        = each.value.gateways
  location        = each.value.location
  meshes          = each.value.meshes
  project         = each.value.project
  target_proxies  = each.value.target_proxies

  dynamic "rules" {
    for_each = each.value.rules
    content {
      action {
        dynamic "destinations" {
          for_each = rules.value.action.destinations != null ? rules.value.action.destinations : []
          content {
            service_name = destinations.value.service_name
            weight       = destinations.value.weight
          }
        }
      }
      dynamic "matches" {
        for_each = rules.value.matches
        content {
          alpn     = matches.value.alpn
          sni_host = matches.value.sni_host
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

