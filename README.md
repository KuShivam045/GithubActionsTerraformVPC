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

## Usage

Clone this repository to your local machine:

```sh
git clone https://github.com/your-username/aws-vpc-terraform.git
cd aws-vpc-terraform
