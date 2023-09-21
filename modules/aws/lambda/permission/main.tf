locals {
  create_this = var.create_this
}

################################################################################
# Lambda Permission
################################################################################

resource "aws_lambda_function" "this" {
  count = local.create_this ? 1 : 0

  action                 = var.action
  event_source_token     = var.event_source_token
  function_name          = var.function_name
  function_url_auth_type = var.function_url_auth_type
  principal              = var.principal
  qualifier              = var.qualifier
  source_account         = var.source_account
  source_arn             = var.source_arn
  statement_id           = var.statement_id
  statement_id_prefix    = var.statement_id_prefix
  principal_org_id       = var.principal_org_id
}
