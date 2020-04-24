#!/usr/bin/env bash
stack_name=crud
template="template/master-fullstack.yaml"


#https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-install-cmd
#also you will need to sign in using;
#aws configure

#MRD01YG8WL:aws-full-stack-template robe2809$ aws configure
#AWS Access Key ID [****************ISV2]:
#AWS Secret Access Key [****************Lm16]:
#Default region name [us-west-2]:
#Default output format [json]:

aws cloudformation deploy --template-file $template --stack-name $stack_name --capabilities CAPABILITY_NAMED_IAM

#to get the apps output url look for outputs in the aws console cloudformation panel for this particular stack
#Remember to delete your stack ... usage is free but the resources are not ... so be mindful of if your
#stack is in use ... otherwise you may be billed for resources not in use
