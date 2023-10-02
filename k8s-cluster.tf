data "digitalocean_kubernetes_versions" "k8s_version" {
  version_prefix = var.DO_K8S_VERSION_PREFIX
}

resource "digitalocean_kubernetes_cluster" "k8s-cluster" { #tfsec:ignore:k8s-cluster
  name          = var.PROJECT_NAME
  region        = var.DO_REGION
  auto_upgrade  = var.DO_AUTO_UPGRATE_CLUSTER
  surge_upgrade = var.DO_SURGE_UPGRADE_CLUSTER
  version       = data.digitalocean_kubernetes_versions.k8s_version.latest_version

  maintenance_policy {
    start_time = var.DO_MAINTENANCE_TIME
    day        = var.DO_MAINTENANCE_DAY
  }

  node_pool {
    name       = "${var.PROJECT_NAME}-autoscale-general-node-pool"
    size       = var.DO_MACHINE_GENERAL_TYPE
    auto_scale = var.DO_MACHINE_GENERAL_NODES_AUTOSCALE
    min_nodes  = var.DO_MACHINE_GENERAL_NODES_MIN
    max_nodes  = var.DO_MACHINE_GENERAL_NODES_MAX
    node_count = var.DO_MACHINE_GENERAL_NODES_COUNT
  }
}
