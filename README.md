
## Cloud Policies for Kubernetes on AWS

This repo contains policies that can check the proper status of a  Kubernetes cluster deployed  using kops on AWS. It also contains sample scripts for setting up and tearing down a Kubernetes cluster with KOPS

## How to run Policies

An easy way to run Custodian is in Docker (assuming Custodian policies are in the `custodian-policies` subdirectory and we are using the user's AWS credentials file):

`docker run -it -v $PWD/custodian-policies:/src/policies -v $HOME/.aws:/root/.aws --entrypoint=/bin/sh capitalone/cloud-custodian`

Since the policies don't specify any deployment mechanism, they get run directly by the Custodian CLI:

`custodian run -s out /src/policies/*`
