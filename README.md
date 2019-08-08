
# terrraform-aws-api-gateway-stages

Terraform module that creates Api Gateways Stages resources in AWS

A stage is a named reference to a deployment, which is a snapshot of the API. You use a Stage to manage and optimize a particular deployment. For example, you can set up stage settings to enable caching, customize request throttling, configure logging, define stage variables or attach a canary release for testing.

* Required Modules:

  * Module [Api Gateway Rest Api](https://registry.terraform.io/modules/corpit-consulting-public/api-gateway-rest-api/aws/0.1.1)
  * Api gateway deployment resource (included in the Rest api module)
## Usage

```hcl

module "gw_stage_v1" {
  source        = "./modules/terraform-aws-api-gateway-stage"
  stage_name    = "V1"
  rest_api_id   = "${module.gw_rest_api.id}"
  deployment_id = "${aws_api_gateway_deployment.test-deployment.id}"
  variables      {
    variable_1 = "${var.variable_1}" 
    variable_2 = "${var.variable_2}" 
  }
}


module "gw_stage_test" {
  source        = "./modules/terraform-aws-api-gateway-stage"
  stage_name    = "Test"
  rest_api_id   = "${module.gw_rest_api.id}"
  deployment_id = "${aws_api_gateway_deployment.test-deployment.id}"
  variables      {
    variable_3 = "${var.variable_3}" 
    variable_4 = "${var.variable_4}"
  }
}

```

## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| access\_log\_settings | Enables access logs for the API stage. Detailed below. | map | `<map>` | no |
| cache\_cluster\_enabled | Specifies whether a cache cluster is enabled for the stage | string | `""` | no |
| cache\_cluster\_size | The size of the cache cluster for the stage, if enabled. Allowed values include 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118 and 237. | string | `""` | no |
| client\_certificate\_id | The identifier of a client certificate for the stage. | string | `""` | no |
| deployment\_id | The ID of the deployment that the stage points to | string | n/a | yes |
| description | The description of the stage | string | `""` | no |
| destination\_arn | ARN of the log group to send the logs to. Automatically removes trailing :* if present. | string | `""` | no |
| documentation\_version | The version of the associated API documentation | string | `""` | no |
| format | The formatting and values recorded in the logs. For more information on configuring the log format rules | string | `""` | no |
| rest\_api\_id | The ID of the associated REST API | string | n/a | yes |
| stage\_name | The name of the stage | string | n/a | yes |
| tags | A mapping of tags to assign to the resource. | map | `<map>` | no |
| variables | A map that defines the stage variables | map | `<map>` | no |
| xray\_tracing\_enabled | Whether active tracing with X-ray is enabled (true or false) . Defaults to false. | string | `"false"` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The id of the stage |
| name | The id of the stage |

