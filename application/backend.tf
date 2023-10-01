terraform {
 backend "gcs" {
   bucket  = "compound-interest-app-terraform-statefile"
   prefix  = "terraform/state"
 }
}