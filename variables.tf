# See https://support.atlassian.com/opsgenie/docs/api-key-management/
variable "opsgenie_api_key" {
  description = "The API key for the Opsgenie integration"
  type        = string
}

variable "opsgenie_api_url" {
  description = "The API URL for the Opsgenie."
  type        = string
  default     = "api.eu.opsgenie.com"
}

variable "opsgenie_timezone" {
  description = "The timezone for the Opsgenie."
  type        = string
  default     = "Europe/London"
}

variable "opsgenie_user_email" {
  description = "Email to use with a new Opsgenie user."
  type        = string
}

variable "opsgenie_user_name" {
  description = "Name to use with a new Opsgenie user."
  type        = string
}
