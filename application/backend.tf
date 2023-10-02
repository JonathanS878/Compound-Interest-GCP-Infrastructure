terraform {
 backend "gcs" {
   bucket  = "compound-interest-app-statefile"
   prefix  = "terraform/state"
 }
}