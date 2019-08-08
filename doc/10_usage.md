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
