#!/bin/bash

# set the GCP project ID 
#gcloud config set project PROJECT_ID

img_build_url="gcr.io/cloud-tagging-10302018/gtm-cloud-image:stable"
# Function to create a new Cloud Run service
create_cloud_run_service() {
  local service_name="$1"
  local image_url="$2"
  local region="$3"
  local memory="$4"
  local max_instances="$5"

  # Set the Google Cloud project ID
  gcloud config set project YOUR_PROJECT_ID

  # Deploy the Cloud Run service
  gcloud run deploy "$service_name" \
    --image="$image_url" \
    --region="$region" \
    --memory="$memory" \
    --max-instances="$max_instances"
}

# Input variables
read -p "Enter the service name: " service_name
read -p "Enter the Docker image URL: " image_url
read -p "Enter the region (e.g., us-central1): " region
read -p "Enter the memory allocation (e.g., 512Mi, 1Gi): " memory
read -p "Enter the maximum number of instances: " max_instances

# Call the function to create the Cloud Run service
#create_cloud_run_service "$service_name" "$image_url" "$region" "$memory" "$max_instances"
create_cloud_run_service "sgtm-preview" "$img_build_url" "us-central1" "128Mi" "1"
