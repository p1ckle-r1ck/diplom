resource "yandex_compute_instance" "master_node" {
    resources {
      memory = var.k8s-instance.master_node.memory
      cores = var.k8s-instance.master_node.cores
      core_fraction = var.k8s-instance.master_node.core_fraction
    }
  network_interface {
    subnet_id = yandex_vpc_subnet.a_subnet.id
    nat = true
  }
  boot_disk {
    initialize_params {
      image_id = var.k8s-instance.master_node.image_id
    }
  }
}

resource "yandex_compute_instance" "worker_node_1" {
    resources {
      memory = var.k8s-instance.worker_node_1.memory
      cores = var.k8s-instance.worker_node_1.cores
      core_fraction = var.k8s-instance.worker_node_1.core_fraction
    }
  network_interface {
    subnet_id = yandex_vpc_subnet.a_subnet.id
    nat = true

  }
  boot_disk {
    initialize_params {
      image_id = var.k8s-instance.master_node.image_id
    }
  }
}

resource "yandex_compute_instance" "worker_node_2" {
    resources {
      memory = var.k8s-instance.worker_node_2.memory
      cores = var.k8s-instance.worker_node_2.cores
      core_fraction = var.k8s-instance.worker_node_2.core_fraction
    }
  network_interface {
    subnet_id = yandex_vpc_subnet.a_subnet.id
    nat =  true
    
  }
  boot_disk {
    initialize_params {
      image_id = var.k8s-instance.master_node.image_id
    }
  }
}