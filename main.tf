terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "example" {
  bucket = "example-cloudtrail-bucket-${random_id.bucket_id.hex}"
  acl    = "private"
}

resource "aws_sns_topic" "cloudtrail_alarm_topic" {
  name = var.sns_topic_name
}

resource "aws_cloudtrail" "example" {
  name                          = "example-trail"
  s3_bucket_name                = aws_s3_bucket.example.bucket
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_log_file_validation    = true
  depends_on                    = [aws_sns_topic.cloudtrail_alarm_topic]
}
