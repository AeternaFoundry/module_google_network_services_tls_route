variable "network_services_tls_routes" {
  description = <<EOT
Map of network_services_tls_routes, attributes below
Required:
    - name
    - rules (block):
        - action (required, block):
            - destinations (optional, block):
                - service_name (optional)
                - weight (optional)
        - matches (required, block):
            - alpn (optional)
            - sni_host (optional)
Optional:
    - deletion_policy
    - description
    - gateways
    - location
    - meshes
    - project
    - target_proxies
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    description     = optional(string)
    gateways        = optional(list(string))
    location        = optional(string)
    meshes          = optional(list(string))
    project         = optional(string)
    target_proxies  = optional(list(string))
    rules = list(object({
      action = object({
        destinations = optional(list(object({
          service_name = optional(string)
          weight       = optional(number)
        })))
      })
      matches = list(object({
        alpn     = optional(list(string))
        sni_host = optional(list(string))
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_services_tls_routes : (
        length(v.rules) >= 1
      )
    ])
    error_message = "Each rules list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_services_tls_routes : (
        alltrue([for item in v.rules : (length(item.matches) >= 1)])
      )
    ])
    error_message = "Each matches list must contain at least 1 items"
  }
}

