
// General vars

variable "region" {
  type = "string"
}

// ES specific
variable "domain" {
  type = "string"
}

variable "esversion" {
  type = "string"
  default = "6.4"
}

variable "type" {
  type = "string"
}

variable "ebs_store" {
  type = "string"
  default = "true"
}

variable "ebs_size" {
  type = "string"
  default = 20
}

variable "snap_start" {
  type = "string"
  default = 23
}

variable "tags" {
  type = "map"
  default = {}
}
