variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "http-security-group"
}

variable "security_group_description" {
  description = "Description of the security group"
  type        = string
  default     = "Security group that allows HTTP traffic"
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the instance via HTTP"
  type        = list(string)
 type        = string
  default     = "Security group that allows HTTP traffic"
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the instance via HTTP"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
