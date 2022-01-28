module "aks_kbst_eastus2_service_nginx" {
  providers = {
    kustomization = kustomization.aks_kbst_eastus2
  }

  source  = "kbst.xyz/catalog/nginx/kustomization"
  version = "0.49.3-kbst.0"

  configuration = {
    apps = {}
    ops = {}
  }
}
