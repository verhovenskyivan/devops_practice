provider "yandex" {
  token     = ""
  cloud_id  = ""
  folder_id = ""
  zone      = "ru-1"
}

resource "yandex_kubernetes_cluster" "k8s_cluster_1" {
  name       = "k8s_cluster_1"
  network_id = ""
  subnet_ids = ["", ""]
  master {
    count = 2
    zonal_master {
      zone = "ru-1"
    }
  }
  node_pool {
    name               = "default_pool"
    machine_type       = ""
    initial_node_count = 6
    location           = "ru-1"
  }

}
