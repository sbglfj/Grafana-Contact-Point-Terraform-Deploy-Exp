resource "grafana_contact_point" "my_contact_point" {
  name = "Test Email Contact Point 1"

  email {
    addresses               = ["jpx2b1@gmail.com", "jpx2b1@gmail.com"]
    message                 = "{{ len .Alerts.Firing }} firing."
    subject                 = "{{ template \"default.title\" .}}"
    single_email            = true
    disable_resolve_message = false
  }
}
