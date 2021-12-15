
variable "project" {
  type        = string
  description = "The ID of the project in which the resource belongs"
}

variable "network_tags" {
  type        = list(string)
  default     = []
  description = " A list of instance tags indicating sets of instances located in the network that may make network connections as specified in allowed []"
}

variable "firewall_name" {
  type        = string
  description = "Name of the resource. The name must be 1-63 characters long. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash."
}

variable "network_ranges" {
  type        = list(string)
  description = "If source ranges are specified, the firewall will apply only to traffic that has source IP address in these ranges"
}

variable "network" {
  type        = string
  description = "The name or self_link of the network to attach this firewall to"
}

variable "priority" {
  type        = number
  default     = 1000
  description = "Priority for this rule. Relative priorities determine precedence of conflicting rules. Lower value of priority implies higher precedence"
}

variable "protocol" {
  type        = string
  description = "The IP protocol to which this rule applies. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, sctp, ipip, all), or the IP protocol number"
}

variable "ports" {
  type        = list(string)
  default     = []
  description = "List of ports to which this rule applies. This field is only applicable for UDP or TCP protocol"
}

variable "action" {
  type        = string
  default     = "allow"
  description = "Choose allow to allow traffic, or deny to deny traffic"
}

variable "description" {
  type        = string
  description = "An optional description of this resource"
}
