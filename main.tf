resource "newrelic_alert_policy" "foo" {
  count=length(var.alert_policy_name)
  name ="${lookup(var.alert_policy_name[count.index],"name")}"
  incident_preference = "PER_POLICY" # PER_POLICY is default
}

