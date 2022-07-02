locals {
  create_this = var.create_this
}

################################################################################
# EC2 Instance
################################################################################

resource "aws_instance" "this" {
  count = local.create_this ? 1 : 0

  ami                                 = var.ami
  associate_public_ip_address         = var.associate_public_ip_address
  availability_zone                   = var.availability_zone
  dynamic "capacity_reservation_specification" {
    for_each = var.capacity_reservation_specification
    content {
      capacity_reservation_preference = capacity_reservation_specification.value.capacity_reservation_preference

      dynamic "capacity_reservation_target" {
        for_each = capacity_reservation_specification.value.capacity_reservation_target
        content {
          capacity_reservation_id                 = capacity_reservation_target.value.capacity_reservation_id
          capacity_reservation_resource_group_arn = capacity_reservation_target.value.capacity_reservation_resource_group_arn
        }
      }
    }
  }
  cpu_core_count                      = var.cpu_core_count
  cpu_threads_per_core                = var.cpu_threads_per_core
  dynamic "credit_specification" {
    for_each = var.credit_specification
    content {
      cpu_credits = credit_specification.value.cpu_credits
    }
  }
  disable_api_stop                    = var.disable_api_stop
  disable_api_termination             = var.disable_api_termination
  dynamic "ebs_block_device" {
    for_each = var.ebs_block_device
    content {
      delete_on_termination = ebs_block_device.value.delete_on_termination
      device_name           = ebs_block_device.value.device_name
      encrypted             = ebs_block_device.value.encrypted
      iops                  = ebs_block_device.value.iops
      kms_key_id            = ebs_block_device.value.kms_key_id
      snapshot_id           = ebs_block_device.value.snapshot_id
      tags                  = ebs_block_device.value.tags
      throughput            = ebs_block_device.value.throughput
      volume_size           = ebs_block_device.value.volume_size
      volume_type           = ebs_block_device.value.volume_type
    }
  }
  ebs_optimized                       = var.ebs_optimized
  dynamic "enclave_options" {
    for_each = var.enclave_options
    content {
      enabled = enclave_options.value.enabled
    }
  }
  dynamic "ephemeral_block_device" {
    for_each = var.ephemeral_block_device
    content {
      device_name           = ebs_block_device.value.device_name
      no_device             = ebs_block_device.value.no_device
      virtual_name          = ebs_block_device.value.virtual_name
    }
  }
  get_password_data                     = var.get_password_data
  hibernation                           = var.hibernation
  host_id                               = var.host_id
  iam_instance_profile                  = var.iam_instance_profile
  instance_initiated_shutdown_behavior  = var.instance_initiated_shutdown_behavior
  instance_type                         = var.instance_type
  ipv6_address_count                    = var.ipv6_address_count
  ipv6_addresses                        = var.ipv6_addresses
  key_name                              = var.key_name
  dynamic "launch_template" {
    for_each = var.launch_templates
    content {
      id                    = launch_template.value.id
      name                  = launch_template.value.name
      version               = launch_template.value.version
    }
  }
  dynamic "maintenance_options" {
    for_each = var.maintenance_options
    content {
      auto_recovery =maintenance_options.value.auto_recovery
    }
  }
  dynamic "metadata_options" {
    for_each = var.metadata_options
    content {
      http_endpoint               = metadata_options.value.http_endpoint
      http_put_response_hop_limit = metadata_options.value.http_put_response_hop_limit
      http_tokens                 = metadata_options.value.http_tokens
      instance_metadata_tags      = metadata_options.value.instance_metadata_tags
    }
  }
  monitoring                            = var.monitoring
  dynamic "network_interface" {
    for_each = var.network_interface
    content {
      delete_on_termination = network_interface.value.delete_on_termination
      device_index          = network_interface.value.device_index
      network_card_index    = network_interface.value.network_card_index
      network_interface_id  = network_interface.value.network_interface_id
    }
  }
  placement_group                       = var.placement_group
  placement_partition_number            = var.placement_partition_number
  dynamic "private_dns_name_options" {
    for_each = var.private_dns_name_options
    content {
      enable_resource_name_dns_aaaa_record  = private_dns_name_options.value.enable_resource_name_dns_aaaa_record
      enable_resource_name_dns_a_record     = private_dns_name_options.value.enable_resource_name_dns_a_record
      hostname_type                         = private_dns_name_options.value.hostname_type
    }
  }
  private_ip                            = var.private_ip
  dynamic "root_block_device" {
    for_each = var.root_block_device
    content {
      delete_on_termination = root_block_device.value.delete_on_termination
      encrypted             = root_block_device.value.encrypted
      iops                  = root_block_device.value.iops
      kms_key_id            = root_block_device.value.kms_key_id
      tags                  = root_block_device.value.tags
      throughput            = root_block_device.value.throughput
      volume_size           = root_block_device.value.volume_size
      volume_type           = root_block_device.value.volume_type
    }
  }
  secondary_private_ips                 = var.secondary_private_ips
  security_groups                       = var.security_groups
  source_dest_check                     = var.source_dest_check
  subnet_id                             = var.subnet_id
  tenancy                               = var.tenancy
  user_data                             = var.user_data
  user_data_base64                      = var.user_data_base64
  user_data_replace_on_change           = var.user_data_replace_on_change
  volume_tags                           = var.volume_tags
  vpc_security_group_ids                = var.vpc_security_group_ids

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}