variable "description" {
  description = "The description of the key as viewed in AWS console."
  type        = string
}

variable "name" {
  description = "The display name of the alias. The name must start with the word 'alias' followed by a forward slash (alias/)."
  type        = string
}

variable "deletion_window_in_days" {
  description = "(Optional) The waiting period, specified in number of days. After the waiting period ends, AWS KMS deletes the KMS key. If you specify a value, it must be between 7 and 30, inclusive. If you do not specify a value, it defaults to 30. If the KMS key is a multi-Region primary key with replicas, the waiting period begins when the last of its replica keys is deleted. Otherwise, the waiting period begins immediately."
}

variable "enable_key_rotation" {
  description = "(Optional, required to be enabled if rotation_period_in_days is specified) Specifies whether key rotation is enabled. Defaults to false."
}

variable "rotation_period_in_days" {
  description = "(Optional) Custom period of time between each rotation date. Must be a number between 90 and 2560 (inclusive)."
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(any)
}

variable "policy" {
  type        = string
  description = "A valid policy JSON document"
}
