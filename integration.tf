# Integrate Opsgenie with New Relic.
# See https://github.com/lisenet/newrelic-ansible-terraform

resource "opsgenie_api_integration" "newrelic" {
  name = "NewRelic"
  type = "NewRelicV2"

  enabled       = true
  owner_team_id = opsgenie_team.homelab.id

  lifecycle {
    prevent_destroy = true
  }
}
