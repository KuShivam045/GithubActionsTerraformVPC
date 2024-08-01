# AWS VPC Infrastructure with Terraform

This repository contains Terraform configuration files to set up a Virtual Private Cloud (VPC) in AWS, including an Application Load Balancer (ALB), EC2 instances, and security groups.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Architecture](#architecture)
- [Modules](#modules)
- [Usage](#usage)
- [Inputs](#inputs)
- [Outputs](#outputs)
- [License](#license)

## Prerequisites

Before you begin, ensure you have met the following requirements:

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
- An AWS account with appropriate permissions to create VPCs, EC2 instances, ALBs, and security groups.
- AWS CLI configured with your AWS credentials.
- Basic understanding of Terraform and AWS.

## Architecture

This Terraform configuration sets up the following infrastructure:

- A VPC with public and private subnets.
- An Internet Gateway and NAT Gateway for internet access.
- An Application Load Balancer (ALB) to distribute incoming traffic.
- EC2 instances in the private subnets.
- Security groups to control inbound and outbound traffic.

## Modules

The configuration uses the following Terraform modules:

- `vpc`: Creates the VPC, subnets, and gateways.
- `alb`: Creates the Application Load Balancer.
- `ec2`: Creates EC2 instances.
- `security_group`: Creates security groups for ALB and EC2 instances.

## CI/CD Pipeline

This repository includes a CI/CD pipeline implemented using GitHub Actions. The pipeline automates the process of testing, planning, and applying the Terraform configuration.

### GitHub Actions Workflow

The GitHub Actions workflow is defined in `.github/workflows/terraform.yml`. It consists of the following steps:

1. **Checkout Code**: Checks out the repository code.
2. **Setup Terraform**: Sets up Terraform on the GitHub runner.
3. **Terraform Format**: Ensures that the Terraform code is properly formatted.
4. **Terraform Init**: Initializes the Terraform configuration.
5. **Terraform Validate**: Validates the Terraform configuration.
6. **Terraform Plan**: Generates and displays an execution plan.
7. **Terraform Apply**: Applies the Terraform configuration (on the main branch).

### Running the Pipeline

The pipeline runs automatically on the following events:

- Pushing changes to the `main` branch.
- Opening a pull request against the `main` branch.

You can also manually trigger the workflow from the GitHub Actions tab in your repository.

### Secrets

The following secrets must be configured in the GitHub repository settings for the pipeline to work:

- `AWS_ACCESS_KEY_ID`: Your AWS access key ID.
- `AWS_SECRET_ACCESS_KEY`: Your AWS secret access key.



## Usage

Clone this repository to your local machine:
```sh
git clone https://github.com/your-username/aws-vpc-terraform.git
cd aws-vpc-terraform
