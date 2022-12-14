resource "opsgenie_escalation" "homelab" {
  name          = "Homelab escalation"
  description   = "Homelab escalation"
  owner_team_id = opsgenie_team.homelab.id

  rules {
    condition   = "if-not-acked"
    notify_type = "default"
    delay       = 30

    recipient {
      type = "team"
      id   = opsgenie_team.homelab.id
    }
  }
}
