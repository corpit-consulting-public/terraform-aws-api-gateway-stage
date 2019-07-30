output "id" {
  description = "The id of the stage"
  value       = "${aws_api_gateway_stage.test.id}"
}

output "name" {
  description = "The id of the stage"
  value       = "${aws_api_gateway_stage.test.stage_name}"
}
