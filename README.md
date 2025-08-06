# Multi-Tier Architecture Project (Final Capstone)

This project demonstrates the design and deployment of a secure, scalable multi-tier architecture on AWS using Terraform and GitHub Actions for automation.

## Architecture Overview

- **Frontend:** Static website hosted on S3 and distributed via CloudFront CDN  
- **Backend:** Flask/Django application running on EC2 instances behind an Application Load Balancer (ALB)  
- **Database:** PostgreSQL RDS instance located in a private subnet for security  
- **Networking:** Custom VPC with public and private subnets, NAT Gateway for outbound internet access from private resources  
- **Security:** IAM roles, Security Groups, and KMS encryption applied across resources  
- **Monitoring:** CloudWatch and CloudTrail configured for logging and audit trails  
- **Automation:** Entire infrastructure and application deployment automated via Terraform and GitHub Actions CI/CD pipeline

## Features

- Infrastructure as Code (IaC) with Terraform ensures reproducible, scalable deployments  
- Secure network design with subnet segmentation and restricted access  
- Automated deployment pipeline for continuous delivery and integration  
- Centralized monitoring and alerting for operational insights and auditing

## Getting Started

### Prerequisites

- AWS account with necessary permissions  
- Terraform installed (v1.0+)  
- AWS CLI configured with credentials  
- GitHub repository setup for code and workflow

### Deployment Steps

1. Clone this repo  
2. Customize Terraform variables as needed  
3. Run `terraform init` to initialize providers and modules  
4. Run `terraform plan` to review changes  
5. Run `terraform apply` to deploy infrastructure  
6. Commit and push changes to GitHub  
7. GitHub Actions will automatically deploy the app and update infrastructure on push  

## Repository Structure

