# Remote state backend (S3 + DynamoDB locking)
#
# Leave this commented out for the first run:
#   1. terraform init          (uses local state)
#   2. terraform apply         (creates the site resources)
#   3. Create a state bucket and a DynamoDB table with a "LockID" (String)
#      partition key, outside this configuration
#   4. Fill in the values below and uncomment the block
#   5. terraform init -migrate-state   (moves local state into S3)
#
# terraform {
#   backend "s3" {
#     bucket         = "<your-terraform-state-bucket>"
#     key            = "portfolio-site/production/terraform.tfstate"
#     region         = "ap-south-1"
#     dynamodb_table = "<your-terraform-lock-table>"
#     encrypt        = true
#   }
# }
