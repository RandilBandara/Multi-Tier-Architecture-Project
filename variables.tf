variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "sns_topic_name" {
  description = "Name of the SNS topic"
  type        = string
  default     = "CloudTrailAlarmTopic"
}
