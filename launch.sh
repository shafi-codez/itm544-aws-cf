#!/usr/bin/env bash

# http://docs.aws.amazon.com/cli/latest/reference/cloudformation/create-stack.html

if [ "$1" == "example1" ];
then
    aws cloudformation create-stack --stack-name itm544-ex1-ec2 --template-body file://templates/ex1-ec2.json \
    --timeout-in-minutes 10 --disable-rollback --region us-east-1 --parameters \
    ParameterKey=KeyName,ParameterValue=default-key

    # aws cloudformation describe-stack-events --stack-name itm544-ex1-ec2
    # aws delete-stack --stack-name itm544-ex1-ec2
fi

if [ "$1" == "example2" ];
then
    aws cloudformation create-stack --stack-name itm544-ex3-lamp-multiAZ --template-body file://templates/ex3-lamp-multiAZ.json \
    --timeout-in-minutes 10 --disable-rollback --region us-east-1 --parameters \
    ParameterKey=KeyName,ParameterValue=default-key \
    ParameterKey=DBUser,ParameterValue=admin \
    ParameterKey=DBPassword,ParameterValue=admin123

    # aws cloudformation describe-stack-events --stack-name itm544-ex1-ec2
    # aws delete-stack --stack-name itm544-ex1-ec2
fi