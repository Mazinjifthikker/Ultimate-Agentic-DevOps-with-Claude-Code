variable "region" {
  description = "AWS region for the S3 bucket"
  type        = string
  default     = "ap-south-1"
}

variable "project_name" {
  description = "Project name, used in resource names and tags"
  type        = string
  default     = "portfolio-site"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "production"
}

variable "domain_name" {
  description = "Optional custom domain for the CloudFront distribution (requires an ACM certificate in us-east-1; leave empty to use the default *.cloudfront.net domain)"
  type        = string
  default     = ""
}
