#!/usr/bin/env bash
stack_name=crud
template="template/master-fullstack.yaml"

aws cloudformation deploy --template-file $template --stack-name $stack_name --capabilities CAPABILITY_NAMED_IAM
