variable "subnet_ids" {
  type = list(any)
}

variable "file_system" {
  type = object({
    storage_capacity    = number
    deployment_type     = string
    throughput_capacity = number
  })
}

variable "kms_key_id" {
  type        = string
  description = "KMS key ARN"
}

variable "volume_name" {
  type        = string
  default     = "new"
  description = "Volume Name"
}
