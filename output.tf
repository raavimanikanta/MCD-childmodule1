output "policy_details" {
  value=newrelic_alert_policy.foo[*].id
}