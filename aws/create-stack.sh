#/bin/bash

source .env

aws cloudformation create-stack \
  --stack-name sandbox-cloudformation \
  --capabilities CAPABILITY_IAM \
  --parameters ParameterKey=AwsAccount,ParameterValue=$AWS_ACCOUNT \
  --template-body cloudformation.yml

