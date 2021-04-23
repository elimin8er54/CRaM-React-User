#!/bin/bash

# Set secrets via environment variables
export TF_VAR_username=AWS_ACCESS_KEY
export TF_VAR_password=AWS_SECRET_KEY

echo AWS_ACCESS_KEY

set -o errexit -o nounset

cd terraform

terraform plan

terraform apply