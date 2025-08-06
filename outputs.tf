output "sns_topic_arn" {
  description = "The ARN of the SNS topic"
  value       = aws_sns_topic.cloudtrail_alarm_topic.arn
}

output "cloudtrail_name" {
  description = "The name of the CloudTrail"
  value       = aws_cloudtrail.example.name
}

output "s3_bucket_name" {
  description = "S3 bucket name for CloudTrail logs"
  value       = aws_s3_bucket.example.bucket
}
