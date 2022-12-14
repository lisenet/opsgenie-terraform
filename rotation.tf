# Team > Schedule > Schedule Rotation

resource "opsgenie_schedule_rotation" "business_hours" {
  schedule_id = opsgenie_schedule.business_hours.id
  name        = "User rotation during business hours"
  start_date  = "2022-12-12T08:00:00Z"
  type        = "daily"
  length      = "1"

  participant {
    type = "user"
    id   = opsgenie_user.main.id
  }

  time_restriction {
    type = "weekday-and-time-of-day"

    restrictions {
      start_day  = "monday"
      end_day    = "monday"
      start_hour = "8"
      start_min  = "0"
      end_hour   = "18"
      end_min    = "0"
    }
    restrictions {
      start_day  = "tuesday"
      end_day    = "tuesday"
      start_hour = "8"
      start_min  = "0"
      end_hour   = "18"
      end_min    = "0"
    }
    restrictions {
      start_day  = "wednesday"
      end_day    = "wednesday"
      start_hour = "8"
      start_min  = "0"
      end_hour   = "18"
      end_min    = "0"
    }
    restrictions {
      start_day  = "thursday"
      end_day    = "thursday"
      start_hour = "8"
      start_min  = "0"
      end_hour   = "18"
      end_min    = "0"
    }
    restrictions {
      start_day  = "friday"
      end_day    = "friday"
      start_hour = "8"
      start_min  = "0"
      end_hour   = "18"
      end_min    = "0"
    }
  }
}

resource "opsgenie_schedule_rotation" "out_of_hours" {
  schedule_id = opsgenie_schedule.out_of_hours.id
  name        = "User rotation out of hours"
  start_date  = "2022-12-12T18:00:00Z"
  type        = "daily"
  length      = "1"

  participant {
    type = "user"
    id   = opsgenie_user.main.id
  }

  time_restriction {
    type = "weekday-and-time-of-day"

    restrictions {
      start_day  = "monday"
      end_day    = "tuesday"
      start_hour = "18"
      start_min  = "0"
      end_hour   = "8"
      end_min    = "0"
    }
    restrictions {
      start_day  = "tuesday"
      end_day    = "wednesday"
      start_hour = "18"
      start_min  = "0"
      end_hour   = "8"
      end_min    = "0"
    }
    restrictions {
      start_day  = "wednesday"
      end_day    = "thursday"
      start_hour = "18"
      start_min  = "0"
      end_hour   = "8"
      end_min    = "0"
    }
    restrictions {
      start_day  = "thursday"
      end_day    = "friday"
      start_hour = "18"
      start_min  = "0"
      end_hour   = "8"
      end_min    = "0"
    }
    restrictions {
      start_day  = "friday"
      end_day    = "monday"
      start_hour = "18"
      start_min  = "0"
      end_hour   = "8"
      end_min    = "0"
    }
  }
}
