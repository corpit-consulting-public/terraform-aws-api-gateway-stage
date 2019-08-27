resource "aws_api_gateway_stage" "test" {
  stage_name            = "${var.stage_name}"
  rest_api_id           = "${var.rest_api_id}"
  deployment_id         = "${var.deployment_id}"
  variables             = "${var.variables}"
  cache_cluster_size    = "${var.cache_cluster_size}"
  cache_cluster_enabled = "${var.cache_cluster_enabled}"
  xray_tracing_enabled  = "${var.xray_tracing_enabled}"
}


