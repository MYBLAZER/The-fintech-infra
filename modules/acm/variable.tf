#Amazon Certificate Manager
variable "domain_name" {
  description = "Primary domain name for the certificate"
  type        = string
  default     = "azwetech01.org" #"dominionsystem.org"
}

variable "san_domains" {
  description = "Subject alternative names for the certificate"
  type        = list(string)
  default     = ["*.azwetech01.org"] #"dominionsystem.org"
}

variable "route53_zone_id" {
  description = "Route 53 Hosted Zone ID"
  type        = string
  default     = "Z00683193FQOUKHUO2A3J" #"Z05475331ZK00RPD27RX0" # Replace with actual Route 53 Zone ID
}

variable "tags" {
  description = "Common tags for the cluster resources"
  type        = map(string)
  default = {
    env       = "dev",
    terraform = "true"
  }
}