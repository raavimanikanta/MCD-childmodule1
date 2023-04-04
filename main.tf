resource "newrelic_alert_policy" "main_policy" {
  count=length(var.alert_policy_name)
  name ="${lookup(var.alert_policy_name[count.index],"name")}"
  incident_preference = "PER_POLICY" # PER_POLICY is default
}

output "policy_details" {
  value=newrelic_alert_policy.main_policy[*].id
}