#!/bin/bash

#################################
#
# This script will list all the resources in the aws account
#
# Author: MDSK/dev guy
# Version: v0.0.1
#
# Following are the supported AWS Services currently we use and can be listed by this script
# 1. EC2
# 2. S3
# 3. IAM
# 4. VPC
#
# Usage: ./aws_resource_list.sh <region> <service_name>
# Example: ./aws_resource_list.sh us-east-1 ec2
#################################

# Check if the required number of arguments are passed or not
if [ $# -ne 2 ]; then
    echo " Usage: $0 <region> <service_name>"
    exit 1
fi

# Assign the arguments to a variable and convert them to uppercase!!
region=$1
service=$2
arg1=$(echo "$region" | tr '[:upper:]' '[:lower:]')
arg2=$(echo "$service" | tr '[:lower:]' '[:upper:]')

# Check if the AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo "AWS CLI is not installed. please install it"
    exit 1
fi

# Check if AWS is Configured
if [ ! -d ~/.aws ]; then
    echo "AWS CLI is not configured. please configure it first and try again"
    exit 1
fi

# Execute the CLI command based on the user argument
case $arg2 in

    EC2)
        aws ec2 describe-instances --region "$arg1"
        ;;
    
    S3)
        aws s3api list-buckets --region "$arg1"
        ;;
    IAM)
        aws iam list-users --region "$arg1"
        ;;
    VPC)
        aws ec2 describe-vpcs --region "$arg1"
        ;;
    *)
        echo "Invalid service name.....PlEASE provide a valid service name"
        exit 1
        ;;
esac



