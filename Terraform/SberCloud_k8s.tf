provider "sbercloud" {
  access_key = ""
  secret_key = ""
  region     = "ru-1"
}

resource "sbercloud_k8s_cluster" "Test" {
  cluster_name           = "Test"
  kube_version           = "1.19.9"
  node_group_count       = 2
  node_auto_scaling      = true
  node_max_pod_per_group = 5
}
