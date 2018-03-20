#/bin/sh

aws s3 mb s3://${TF_VARS_KOPS_BUCKET_NAME}
kops create cluster --name=k8s.${PUBLIC_CLUSTER_DOMAIN} \
  --state=s3://${TF_VARS_KOPS_BUCKET_NAME} --zones=eu-west-1a \
  --node-count=1 --node-size=t2.micro \
  --dns-zone="${PUBLIC_CLUSTER_DOMAIN}." --yes
