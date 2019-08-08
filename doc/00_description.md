# terrraform-aws-api-gateway-stages

Terraform module that creates Api Gateways Stages resources in AWS

A stage is a named reference to a deployment, which is a snapshot of the API. You use a Stage to manage and optimize a particular deployment. For example, you can set up stage settings to enable caching, customize request throttling, configure logging, define stage variables or attach a canary release for testing.

* Required Modules:

  * Module [Api Gateway Rest Api](https://registry.terraform.io/modules/corpit-consulting-public/api-gateway-rest-api/aws/0.1.1)
  * Api gateway deployment resource (included in the Rest api module)
