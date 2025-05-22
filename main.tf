resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.zone
  deletion_protection = false
  initial_node_count = var.node_count
  node_config {
    machine_type = var.machine_type
    disk_size_gb = 40
  }
  remove_default_node_pool = false
}


