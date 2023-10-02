terraform {
 backend "gcs" {
   bucket  = "compound-interest-infra-statefile"
   prefix  = "terraform/state"
 }
}