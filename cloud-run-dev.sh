#!/bin/bash
# set the GCP project ID 
#gcloud config set project PROJECT_ID

# Set variables
img_build_url="gcr.io/cloud-tagging-10302018/gtm-cloud-image:stable"
RUN_AS_PREVIEW_SERVER="true"
CONTAINER_CONFIG="aWQ9R1RNLVBNS1JNU1AmZW52PTEmYXV0aD1uY2l0eFBmWWk5WFBQQi1GTUtxNTV3"
PORT=80

# Set Cloud Run service name
# read -p "Enter a name for the Cloud Run service: " SERVICE_NAME

# # Set environment variables
# # read -p "Enter the value for RUN_AS_PREVIEW_SERVER: " RUN_AS_PREVIEW_SERVER_VALUE
# read -p "Enter the value for CONTAINER_CONFIG: " CONTAINER_CONFIG

 
# Function to create a new Cloud Run service

create_cloud_run_service() {
  local service_name="$1"
  local image_url="$2"
  local region="$3"
  local memory="$4"
  local max_instances="$5"

echo "CONTAINER_CONFIG URL: $CONTAINER_CONFIG"
echo "Port : $PORT"

  # Deploy the Cloud Run service
  gcloud run deploy "$service_name" \
    --image="$image_url" \
    --region="$region" \
    --memory="$memory" \
    --max-instances="$max_instances" \
    --port="$PORT" \
    --platform managed \
    --allow-unauthenticated \
#     --update-env-vars "$env_vars" \
   
  #  --set-env-vars "RUN_AS_PREVIEW_SERVER=$RUN_AS_PREVIEW_SERVER_VALUE,CONTAINER_CONFIG=$CONTAINER_CONFIG"

# Print service URL
SERVICE_URL=$(gcloud run services describe "$SERVICE_NAME" --format 'value(status.url)' 2>/dev/null)
echo "Service URL: $SERVICE_URL"
}

create_cloud_run_service "sgtm-preview" "$img_build_url" "us-central1" "128Mi" "1"
