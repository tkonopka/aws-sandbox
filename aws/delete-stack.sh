#!/bin/bash

source .env

aws --profile $AWS_PROFILE \
  cloudformation delete-stack \
  --region $AWS_REGION \
  --stack-name $STACK_NAME
