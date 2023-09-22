locals {
  region        = var.aws_region # "Default is ap-southeast-2, but this can be overriden via terraform -var aws_region=us-west-2"
  function_name = "cloudwatch-to-s3-tf"
  tags = {
    Owner         = "GitHub"
    Environment   = "TemplateTest"
    SourceRepoUrl = "https://github.com/harisfauzi/shared-terraform-aws"
  }
}

module "iam_role_lambda_function" {
  source = "../../../modules/aws/iam/aws_iam_role"

  name = "test-role-lambda-function"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      },
    ]
  })
  description = "IAM Role to test Lambda Function"
  managed_policy_arns = [
    "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole",
    "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  ]
  tags = local.tags
}

data "archive_file" "python_package_1" {
  type        = "zip"
  source_file = "${path.module}/../../lambdas/test01/lambda_function.py"
  output_path = "${path.module}/../../lambdas/test01/lambda_function.zip"
}

module "lambda_function_test_1" {
  source           = "../../../modules/aws/lambda/function"
  function_name    = "test01"
  description      = "Template unit test 01"
  architectures    = ["arm64"]
  source_code_hash = data.archive_file.python_package_1.output_base64sha256
  filename         = data.archive_file.python_package_1.output_path
  role             = module.iam_role_lambda_function.arn
  runtime          = "python3.10"
  handler          = "lambda_function.lambda_handler"
  timeout          = 3
  tags             = local.tags
}

module "event_rule_1" {
  source              = "../../../modules/aws/events/rule"
  name                = "event_rule_1"
  description         = "Test EventBridge rule 01"
  schedule_expression = "cron(15 10 * * ? *)"
  tags                = local.tags
}

module "event_target_1" {
  source = "../../../modules/aws/events/target"
  arn    = module.lambda_function_test_1.arn
  rule   = module.event_rule_1.id
}
