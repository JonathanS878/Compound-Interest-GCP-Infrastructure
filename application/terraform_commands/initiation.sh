#!/bin/bash

# Define a function to print steps in a noticeable way
print_step() {
    echo ""
    echo "##############################################################################"
    echo "# $1"
    echo "##############################################################################"
}

# Define a function to check the success of the previous command
check_success() {
    if [ $? -eq 0 ]; then
        echo "[SUCCESS] $1"
    else
        echo "[ERROR] Failed to $1"
        exit 1
    fi
}

# Step 1: Get GKE credentials
print_step "Step 1: Getting GKE credentials..."
gcloud container clusters get-credentials compound-interest-prod --zone us-west1-a --project compound-interest-project
check_success "retrieve GKE credentials"

# Step 2: Run Terraform
print_step "Step 2: Initializing Terraform..."
terraform init
check_success "initialize Terraform"

print_step "Applying Terraform configurations..."
terraform apply -auto-approve
check_success "apply Terraform configurations"

echo ""
echo "All steps completed successfully!"
