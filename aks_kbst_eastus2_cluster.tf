module "aks_kbst_eastus2" {
  source = "github.com/kbst/terraform-kubestack//azurerm/cluster?ref=v0.16.0-beta.0"

  configuration = {
    apps = {
      base_domain = var.base_domain
      default_node_pool_max_count = 9
      default_node_pool_min_count = 3
      default_node_pool_node_count = 3
      default_node_pool_vm_size = "Standard_D4_v4"
      name_prefix = "kbst"
      resource_group = "waylew-aks-apps"
    }
    ops = {
      resource_group = "waylew-aks-ops"
    }
  }
}
