variable "location" {
  description = "(Required) The region that resources are deployed."
  type        = string
}

variable "environment" {
  description = "(Required) The environment resources are deployed to."
  type        = string
}

variable "project" {
  description = "(Required) A 3 Character representation of the project."
  typr        = string
}

variable "solution" {
  description = "(Optional) An application or part of the project"
  type        = string
  default     = ""
}

variable "subnets" {
  description = "(Optional) List of subnet names to be created"
  type        = list(string)
  default     = []
}
