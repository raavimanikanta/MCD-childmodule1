output "policy_details" {
  value=newrelic_alert_policy.main_policy[*].id
}