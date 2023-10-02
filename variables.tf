variable "DO_REGION" {
  type        = string
  default     = "nyc1"
  description = "DO region to use"
}
variable "DO_AUTO_UPGRATE_CLUSTER" {
  type        = bool
  default     = true
  description = "(Optional) A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window."
}
variable "DO_SURGE_UPGRADE_CLUSTER" {
  type        = bool
  default     = true
  description = "(Optional) Enable/disable surge upgrades for a cluster. Default: false"
}
variable "DO_MAINTENANCE_DAY" {
  type        = string
  default     = "monday"
  description = "(Required) The day of the maintenance window policy. May be one of \"monday\" through \"sunday\", or \"any\" to indicate an arbitrary week day."
}
variable "DO_MAINTENANCE_TIME" {
  type        = string
  default     = "04:00"
  description = "(Required) The day of the maintenance window policy. May be one of \"monday\" through \"sunday\", or \"any\" to indicate an arbitrary week day."
}
variable "DO_K8S_VERSION_PREFIX" {
  type        = string
  default     = "1.28."
  description = "The Version Kubernetes cluster to deployment"
}
variable "DO_MACHINE_GENERAL_TYPE" {
  type        = string
  default     = "s-2vcpu-2gb"
  description = "Droplet size. List all size: doctl compute size list"
}
variable "DO_MACHINE_GENERAL_NODES_AUTOSCALE" {
  type        = bool
  default     = false
  description = "Enable auto-scaling of the number of nodes in the node pool within the given min/max range."
}
variable "DO_MACHINE_GENERAL_NODES_MIN" {
  type        = number
  default     = 1
  description = "If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to"
}
variable "DO_MACHINE_GENERAL_NODES_MAX" {
  type        = number
  default     = 5
  description = "If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to."
}
variable "DO_MACHINE_GENERAL_NODES_COUNT" {
  type        = number
  default     = 2
  description = "The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value."
}

variable "PROJECT_NAME" {
  type        = string
  default     = "k8s-demo"
  description = "Cluster name"
}
