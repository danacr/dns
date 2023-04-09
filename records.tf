data "cloudflare_zones" "dan" {
  filter {
    name        = "dan.cv"
    lookup_type = "contains"
    status      = "active"
  }
}

resource "cloudflare_record" "arecord" {
  zone_id = data.cloudflare_zones.dan.zones[0].id
  name    = "@"
  value   = var.webhost_ip
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id = data.cloudflare_zones.dan.zones[0].id
  name    = "www.dan.cv"
  value   = var.webhost_ip
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "go" {
  zone_id = data.cloudflare_zones.dan.zones[0].id
  name    = "go"
  value   = "cname.short.io"
  type    = "CNAME"
  proxied = true
}