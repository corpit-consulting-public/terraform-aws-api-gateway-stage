variable "rest_api_id" {
  type        = "string"
  description = "The ID of the associated REST API"
}

variable "stage_name" {
  type        = "string" 
  description = "The name of the stage"
}

variable "deployment_id" {
  type        = "string"
  description = "The ID of the deployment that the stage points to"
}

variable "access_log_settings" {
  type        = "map"
  description = "Enables access logs for the API stage. Detailed below."
  default     = {}
}

variable "cache_cluster_enabled" {
  type        = "string"
  description = "Specifies whether a cache cluster is enabled for the stage"
  default     = "false"
}

variable "cache_cluster_size" {
  type        = "string"
  description = "The size of the cache cluster for the stage, if enabled. Allowed values include 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118 and 237."
  default     = ""
}

variable "client_certificate_id" {
  type        = "string"
  description = "The identifier of a client certificate for the stage."
  default     = ""
}

variable "description" {
  type        = "string"
  description = "The description of the stage"
  default     = ""
}

variable "documentation_version" {
  type        = "string"
  description = "The version of the associated API documentation"
  default     = ""
}

variable "variables" {
  type        = "map"
  description = "A map that defines the stage variables"
  default     = {}
}

variable "tags" {
  type        = "map"
  description = "A mapping of tags to assign to the resource."
  default     = {}
}

variable "xray_tracing_enabled" {
  type        = "string"
  description = "Whether active tracing with X-ray is enabled (true or false) . Defaults to false."
  default     = "false"
}

#####access_log_settings

variable "destination_arn" {
  type        = "string"
  description = "ARN of the log group to send the logs to. Automatically removes trailing :* if present."
  default     = ""
}

variable "format" {
  type        = "string"
  description = "The formatting and values recorded in the logs. For more information on configuring the log format rules"
  default     = ""
}
