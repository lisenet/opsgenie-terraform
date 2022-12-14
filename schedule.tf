# Team > Schedule > Schedule Rotation

resource "opsgenie_schedule" "business_hours" {
  name          = "Team schedule for business hours"
  description   = "What schedule to use during business hours"
  timezone      = var.opsgenie_timezone
  enabled       = true
  owner_team_id = opsgenie_team.homelab.id
}

resource "opsgenie_schedule" "out_of_hours" {
  name          = "Team schedule for out of hours"
  description   = "What schedule to use out of hours"
  timezone      = var.opsgenie_timezone
  enabled       = true
  owner_team_id = opsgenie_team.homelab.id
}
