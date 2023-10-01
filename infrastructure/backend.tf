terraform {
 backend "gcs" {
   bucket  = "compound-interest-terraform-statefile"
   prefix  = "terraform/state"
 }
}