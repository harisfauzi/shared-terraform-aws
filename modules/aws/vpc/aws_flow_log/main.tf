locals {
  create_this = var.create_this
}

################################################################################
# Flow Log
################################################################################

resource "aws_flow_log" "this" {
  count = local.create_this ? 1 : 0

  traffic_type              = var.traffic_type
  eni_id                    = var.eni_id
  iam_role_arn              = var.iam_role_arn
  log_destination_type      = var.log_destination_type
  log_destination           = var.log_destination
  log_group_name            = var.log_group_name
  subnet_id                 = var.subnet_id
  vpc_id                    = var.vpc_id
  log_format                = var.log_format
  max_aggregation_interval  = var.max_aggregation_interval
  dynamic "destination_options" {
    for_each = var.destination_options
    content {
      file_format                 = destination_options.value.file_format
      hive_compatible_partitions  = destination_options.value.hive_compatible_partitions
      per_hour_partition          = destination_options.value.per_hour_partition
    }
  }

  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}