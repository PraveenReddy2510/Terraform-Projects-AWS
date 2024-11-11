#!/bin/bash

# Base directory for Terraform
BASE_DIR="terraform"

# Create the base directory and main files
mkdir -p $BASE_DIR
touch $BASE_DIR/main.tf
touch $BASE_DIR/variables.tf
touch $BASE_DIR/outputs.tf
touch $BASE_DIR/versions.tf
touch $BASE_DIR/terraform.tfvars

# Create environment-specific directories and tfvars files
mkdir -p $BASE_DIR/env/dev
mkdir -p $BASE_DIR/env/staging
mkdir -p $BASE_DIR/env/prod
touch $BASE_DIR/env/dev/terraform.tfvars
touch $BASE_DIR/env/staging/terraform.tfvars
touch $BASE_DIR/env/prod/terraform.tfvars

# Create module directories
mkdir -p $BASE_DIR/modules/networking
mkdir -p $BASE_DIR/modules/compute
mkdir -p $BASE_DIR/modules/security
mkdir -p $BASE_DIR/modules/storage
mkdir -p $BASE_DIR/modules/monitoring

# Create placeholder README.md files in each module (optional)
for module in networking compute security storage monitoring; do
  echo "# ${module^} Module" > $BASE_DIR/modules/$module/README.md
done

echo "Terraform folder structure created successfully."

# Add .gitignore to exclude auto-generated files
cat <<EOL > $BASE_DIR/.gitignore
# Terraform files to ignore
.terraform/
terraform.tfstate
terraform.tfstate.backup
.terraform.lock.hcl
EOL

echo ".gitignore file created to exclude Terraform auto-generated files."

