

#maxcompute project 
variable "name" {
  description = "The maxcompute project name."
  type        = string
  default     = "From_Terraform"
}

variable "product_type" {
  description = "Quota payment type. Supported values: `PayAsYouGo`, `Subscription` and `Dev`."
  type        = string
  default     = null
}

variable "comment" {
  description = "Comments of project"
  type        = string
  default     = null
}

variable "default_quota" {
  description = "Default Computing Resource Group"
  type        = string
  default     = null
}

variable "ip_white_list" {
  description = "IP whitelist. ip_list: Classic network IP white list. vpc_ip_list: VPC network whitelist."
  type = list(object({
    ip_list     = string
    vpc_ip_list = string
  }))
  default = []
}