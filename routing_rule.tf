# Team > Schedule > Team Routing Rule

resource "opsgenie_team_routing_rule" "business_hours" {
  name     = "Route alerts to business hours schedule during business hours"
  team_id  = opsgenie_team.homelab.id
  order    = 0
  timezone = var.opsgenie_timezone

  criteria {
    type = "match-all"
  }

  time_restriction {
    type = "weekday-and-time-of-day"
    restrictions {
      start_day  = "monday"
      start_hour = 8
      start_min  = 0
      end_day    = "monday"
      end_hour   = 18
      end_min    = 0
    }
    restrictions {
      start_day  = "tuesday"
      start_hour = 8
      start_min  = 0
      end_day    = "tuesday"
      end_hour   = 18
      end_min    = 0
    }
    restrictions {
      start_day  = "wednesday"
      start_hour = 8
      start_min  = 0
      end_day    = "wednesday"
      end_hour   = 18
      end_min    = 0
    }
    restrictions {
      start_day  = "thursday"
      start_hour = 8
      start_min  = 0
      end_day    = "thursday"
      end_hour   = 18
      end_min    = 0
    }
    restrictions {
      start_day  = "friday"
      start_hour = 8
      start_min  = 0
      end_day    = "friday"
      end_hour   = 18
      end_min    = 0
    }
  }

  notify {
    name = opsgenie_schedule.business_hours.name
    type = "schedule"
  }
}

