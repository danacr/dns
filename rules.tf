resource "cloudflare_page_rule" "rewrite" {
  zone_id = data.cloudflare_zones.dan.zones[0].id

  target   = "http://dan.cv"
  priority = 1

  actions {
    always_use_https = true
  }
}
resource "cloudflare_page_rule" "rewrite_www" {
  zone_id = data.cloudflare_zones.dan.zones[0].id

  target   = "http://www.dan.cv"
  priority = 2

  actions {
    always_use_https = true
  }
}
resource "cloudflare_page_rule" "https" {
  zone_id = data.cloudflare_zones.dan.zones[0].id

  target   = "https://www.dan.cv"
  priority = 3

  actions {
    ssl                      = "flexible"
    automatic_https_rewrites = "on"
  }
}
