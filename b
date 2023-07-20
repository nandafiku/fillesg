random=$(echo $(shuf -i 1-1000 -n 1)-tf2)
gcloud services enable \
  compute.googleapis.com \
  iam.googleapis.com \
  iamcredentials.googleapis.com \
  monitoring.googleapis.com \
  logging.googleapis.com \
  notebooks.googleapis.com \
  aiplatform.googleapis.com \
  bigquery.googleapis.com \
  artifactregistry.googleapis.com \
  cloudbuild.googleapis.com \
  ml.googleapis.com \
  container.googleapis.com \
  run.googleapis.com
gcloud notebooks instances create $random \
  --location=us-west1-a \
  --vm-image-project=deeplearning-platform-release \
  --vm-image-family=common-cpu-notebooks \
  --machine-type=e2-standard-2