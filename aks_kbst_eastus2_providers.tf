provider "azurerm" {
  features {}
}

provider "kustomization" {
  alias = "aks_kbst_eastus2"

  kubeconfig_raw = module.aks_kbst_eastus2.kubeconfig
}
