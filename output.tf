output "newrelic_integration_api_key" {
  description = "API key of the created integration"
  value       = opsgenie_api_integration.newrelic.api_key
  sensitive   = true
}
