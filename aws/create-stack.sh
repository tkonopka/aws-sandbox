#/bin/bash

source .env

aws --profile $AWS_PROFILE \
  cloudformation create-stack \
  --stack-name $STACK_NAME \
  --region $AWS_REGION \
  --capabilities CAPABILITY_IAM \
  --parameters  ParameterKey=AwsAccount,ParameterValue=$AWS_ACCOUNT \
                ParameterKey=StackName,ParameterValue=$STACK_NAME \
  --template-body file://cloudformation.yml

