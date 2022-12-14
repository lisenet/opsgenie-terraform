resource "opsgenie_team" "homelab" {
  name        = "Homelab"
  description = "This team deals with all the things"

  delete_default_resources = true

  member {
    id   = "${opsgenie_user.main.id}"
    role = "admin"
  }
}
