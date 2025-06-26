terraform {
  required_providers {
    opsgenie = {
      source  = "opsgenie/opsgenie"
      version = "0.6.37"
    }
  }
}

provider "opsgenie" {
  api_key = var.opsgenie_api_key
  api_url = var.opsgenie_api_url
}
