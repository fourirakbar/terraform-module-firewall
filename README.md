# GCP FIREWALL
Module which will cover creation `google_compute_firewall` to allow and deny network traffic.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| action | Choose allow to allow traffic, or deny to deny traffic | `string` | `"allow"` | no |
| description | An optional description of this resource | `string` | n/a | yes |
| firewall\_name | Name of the resource. The name must be 1-63 characters long. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]\*[a-z0-9])? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. | `string` | n/a | yes |
| network | The name or self\_link of the network to attach this firewall to | `string` | n/a | yes |
| network\_ranges | If source ranges are specified, the firewall will apply only to traffic that has source IP address in these ranges | `list(string)` | n/a | yes |
| network\_tags | A list of instance tags indicating sets of instances located in the network that may make network connections as specified in allowed [] | `list(string)` | `[]` | no |
| ports | List of ports to which this rule applies. This field is only applicable for UDP or TCP protocol | `list(string)` | `[]` | no |
| priority | Priority for this rule. Relative priorities determine precedence of conflicting rules. Lower value of priority implies higher precedence | `number` | `1000` | no |
| project | The ID of the project in which the resource belongs | `string` | n/a | yes |
| protocol | The IP protocol to which this rule applies. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, sctp, ipip, all), or the IP protocol number | `string` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
