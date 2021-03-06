#!/bin/bash
set -e
cat cloudformation.json | jq
make build

aws s3 cp --acl public-read cloudformation.json s3://humio-public-us-east-1/ --region us-east-1

aws s3 cp --acl public-read target/v1.0.0_cloudwatch2humio.zip s3://humio-public-eu-central-1/ --region eu-central-1
aws s3 cp --acl public-read target/v1.0.0_cloudwatch2humio.zip s3://humio-public-eu-west-1/ --region eu-west-1
aws s3 cp --acl public-read target/v1.0.0_cloudwatch2humio.zip s3://humio-public-eu-west-2/ --region eu-west-2
aws s3 cp --acl public-read target/v1.0.0_cloudwatch2humio.zip s3://humio-public-eu-north-1/  --region eu-north-1

aws s3 cp --acl public-read target/v1.0.0_cloudwatch2humio.zip s3://humio-public-us-east-1/ --region us-east-1
aws s3 cp --acl public-read target/v1.0.0_cloudwatch2humio.zip s3://humio-public-us-east-2/ --region us-east-2
aws s3 cp --acl public-read target/v1.0.0_cloudwatch2humio.zip s3://humio-public-us-west-2/ --region us-west-2
