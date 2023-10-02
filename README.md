# tf-do-k8s-cluster-module
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | ~> 2.30.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | ~> 2.30.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_kubernetes_cluster.k8s-cluster](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/kubernetes_cluster) | resource |
| [digitalocean_kubernetes_versions.k8s_version](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/kubernetes_versions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_DO_AUTO_UPGRATE_CLUSTER"></a> [DO\_AUTO\_UPGRATE\_CLUSTER](#input\_DO\_AUTO\_UPGRATE\_CLUSTER) | (Optional) A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window. | `bool` | `true` | no |
| <a name="input_DO_K8S_VERSION_PREFIX"></a> [DO\_K8S\_VERSION\_PREFIX](#input\_DO\_K8S\_VERSION\_PREFIX) | The Version Kubernetes cluster to deployment | `string` | `"1.28."` | no |
| <a name="input_DO_MACHINE_GENERAL_NODES_AUTOSCALE"></a> [DO\_MACHINE\_GENERAL\_NODES\_AUTOSCALE](#input\_DO\_MACHINE\_GENERAL\_NODES\_AUTOSCALE) | Enable auto-scaling of the number of nodes in the node pool within the given min/max range. | `bool` | `false` | no |
| <a name="input_DO_MACHINE_GENERAL_NODES_COUNT"></a> [DO\_MACHINE\_GENERAL\_NODES\_COUNT](#input\_DO\_MACHINE\_GENERAL\_NODES\_COUNT) | The number of Droplet instances in the node pool. If auto-scaling is enabled, this should only be set if the desired result is to explicitly reset the number of nodes to this value. If auto-scaling is enabled, and the node count is outside of the given min/max range, it will use the min nodes value. | `number` | `2` | no |
| <a name="input_DO_MACHINE_GENERAL_NODES_MAX"></a> [DO\_MACHINE\_GENERAL\_NODES\_MAX](#input\_DO\_MACHINE\_GENERAL\_NODES\_MAX) | If auto-scaling is enabled, this represents the maximum number of nodes that the node pool can be scaled up to. | `number` | `5` | no |
| <a name="input_DO_MACHINE_GENERAL_NODES_MIN"></a> [DO\_MACHINE\_GENERAL\_NODES\_MIN](#input\_DO\_MACHINE\_GENERAL\_NODES\_MIN) | If auto-scaling is enabled, this represents the minimum number of nodes that the node pool can be scaled down to | `number` | `1` | no |
| <a name="input_DO_MACHINE_GENERAL_TYPE"></a> [DO\_MACHINE\_GENERAL\_TYPE](#input\_DO\_MACHINE\_GENERAL\_TYPE) | Droplet size. List all size: doctl compute size list | `string` | `"s-2vcpu-2gb"` | no |
| <a name="input_DO_MAINTENANCE_DAY"></a> [DO\_MAINTENANCE\_DAY](#input\_DO\_MAINTENANCE\_DAY) | (Required) The day of the maintenance window policy. May be one of "monday" through "sunday", or "any" to indicate an arbitrary week day. | `string` | `"monday"` | no |
| <a name="input_DO_MAINTENANCE_TIME"></a> [DO\_MAINTENANCE\_TIME](#input\_DO\_MAINTENANCE\_TIME) | (Required) The day of the maintenance window policy. May be one of "monday" through "sunday", or "any" to indicate an arbitrary week day. | `string` | `"04:00"` | no |
| <a name="input_DO_REGION"></a> [DO\_REGION](#input\_DO\_REGION) | DO region to use | `string` | `"nyc1"` | no |
| <a name="input_DO_SURGE_UPGRADE_CLUSTER"></a> [DO\_SURGE\_UPGRADE\_CLUSTER](#input\_DO\_SURGE\_UPGRADE\_CLUSTER) | (Optional) Enable/disable surge upgrades for a cluster. Default: false | `bool` | `true` | no |
| <a name="input_PROJECT_NAME"></a> [PROJECT\_NAME](#input\_PROJECT\_NAME) | Cluster name | `string` | `"k8s-demo"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
