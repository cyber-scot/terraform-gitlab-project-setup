variable "GITLAB_TOKEN" {
  type        = string
  description = "The token to be used to authenticate to GitLab, normally sourced via TF_VAR"
}

variable "Regions" {
  type = map(string)
  default = {
    uks = "UK South"
    ukw = "UK West"
    eus = "East US"
    euw = "West Europe"
  }
  description = "Converts shorthand name to longhand name via lookup on map list"
}

variable "env" {
  type        = string
  description = "The env variable, for example - prd for production. normally passed via TF_VAR."
  default     = "prd"
}

variable "gitlab_group" {
  type        = string
  description = "The name of the gitlab group"
  default     = "cyber-scot"
}

variable "gitlab_instance" {
  type        = string
  description = "The name of the GitLab instance"
  default     = "gitlab.com"
}

variable "gitlab_project_name" {
  type        = string
  description = "The name of the GitLab project"
  default     = "terraform-ci-cd-glue"
}

variable "loc" {
  type        = string
  description = "The loc variable, for the shorthand location, e.g. uks for UK South.  Normally passed via TF_VAR."
  default     = "uks"
}

variable "short" {
  type        = string
  description = "The shorthand name of to be used in the build, e.g. cscot for CyberScot.  Normally passed via TF_VAR."
  default     = "cscot"
}

variable "static_tags" {
  type        = map(string)
  description = "The tags variable"
  default = {
    "CostCentre" = "671888"
    "ManagedBy"  = "Terraform"
    "Contact"    = "info@cyber.scot"
  }
}