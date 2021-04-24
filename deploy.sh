#!/bin/bash

# Set secrets via environment variables
export TF_VAR_accesskey=$AWS_ACCESS_KEY
export TF_VAR_secretkey=$AWS_SECRET_KEY

set -o errexit -o nounset

cd terraform

terraform init

terraform plan

terraform apply