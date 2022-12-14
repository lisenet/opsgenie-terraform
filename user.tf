resource "opsgenie_user" "main" {
  username  = var.opsgenie_user_email
  full_name = var.opsgenie_user_name
  role      = "User"
  locale    = "en_GB"
  timezone  = var.opsgenie_timezone

  lifecycle {
    prevent_destroy = true
  }
}
