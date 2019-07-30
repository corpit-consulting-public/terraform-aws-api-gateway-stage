resource "aws_api_gateway_stage" "test" {
  stage_name    = "${var.stage_name}"
  rest_api_id   = "${var.rest_api_id}"
  deployment_id = "${var.deployment_id}"
  variables     = "${var.variables}"
}
