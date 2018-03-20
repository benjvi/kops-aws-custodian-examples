#!/bin/sh

kops delete cluster --name=k8s.${PUBLIC_CLUSTER_DOMAIN} \
  --state=s3://${TF_VARS_KOPS_BUCKET_NAME} --yes

aws s3 rb s3://${TF_VARS_KOPS_BUCKET_NAME}
