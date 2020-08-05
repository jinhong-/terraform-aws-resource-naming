locals {
  max_character_length = {
    "autoscaling_group"                   = "255" # https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateAutoScalingGroup.html
    "autoscaling_policy"                  = "255" # https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutScalingPolicy.html
    "autoscaling_schedule"                = "255" # https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_PutScheduledUpdateGroupAction.html
    "cloudwatch_event_rule"               = "64"  # https://docs.aws.amazon.com/AmazonCloudWatchEvents/latest/APIReference/API_Rule.html
    "cloudwatch_log_group"                = "512" # https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_CreateLogGroup.html
    "cloudwatch_metric_alarm"             = "255" # https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_PutMetricAlarm.html
    "codebuild_project"                   = "255" # https://docs.aws.amazon.com/codebuild/latest/APIReference/API_CreateProject.html#CodeBuild-CreateProject-request-name
    "codecommit_repository"               = "100" # https://docs.aws.amazon.com/codecommit/latest/APIReference/API_CreateRepository.html#CodeCommit-CreateRepository-request-repositoryName
    "codepipeline"                        = "100" # https://docs.aws.amazon.com/codepipeline/latest/APIReference/API_PipelineDeclaration.html#CodePipeline-Type-PipelineDeclaration-name
    "db_instance"                         = "63"  # https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBInstance.html
    "db_parameter_group"                  = "255" # https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_CreateDBParameterGroup.html
    "dynamodb_table"                      = "255" # https://docs.aws.amazon.com/amazondynamodb/latest/APIReference/API_CreateTable.html
    "ecr_repository"                      = "256" # https://docs.aws.amazon.com/AmazonECR/latest/APIReference/API_CreateRepository.html#ECR-CreateRepository-request-repositoryName
    "ecs_cluster"                         = "255" # https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCluster.html#ECS-CreateCluster-request-clusterName
    "ecs_service"                         = "255" # https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html#ECS-CreateService-request-serviceName
    "ecs_task_definition"                 = "255" # https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RegisterTaskDefinition.html#ECS-RegisterTaskDefinition-request-family
    "elasticache_cluster"                 = "40"  # https://docs.aws.amazon.com/AmazonElastiCache/latest/APIReference/API_CreateCacheCluster.html
    "elasticache_parameter_group"         = "255" # https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/ParameterGroups.Creating.html
    "elasticsearch_domain"                = "28"  # https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains
    "iam_instance_profile"                = "128" # https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateInstanceProfile.html
    "iam_role"                            = "64"  # https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html
    "iam_policy"                          = "128" # https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreatePolicy.html
    "instance"                            = "255" # https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Tag.html
    "key_pair"                            = "255" # https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateKeyPair.html
    "kinesis_firehose_delivery_stream"    = "64"  # https://docs.aws.amazon.com/firehose/latest/APIReference/API_CreateDeliveryStream.html
    "lambda_function"                     = "140" # https://docs.aws.amazon.com/lambda/latest/dg/API_CreateFunction.html
    "launch_configuration"                = "255" # https://docs.aws.amazon.com/autoscaling/ec2/APIReference/API_CreateLaunchConfiguration.html
    "lb"                                  = "32"  # https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateLoadBalancer.html
    "lb_target_group"                     = "32"  # https://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateTargetGroup.html
    "s3_bucket"                           = "63"  # https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html
    "secretsmanager_secret"               = "256" # https://docs.aws.amazon.com/secretsmanager/latest/userguide/reference_limits.html
    "security_group"                      = "255" # https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateSecurityGroup.html
    "sns_topic"                           = "256" # https://docs.aws.amazon.com/sns/latest/api/API_CreateTopic.html
    "sqs_queue"                           = "80"  # https://docs.aws.amazon.com/AWSSimpleQueueService/latest/APIReference/API_CreateQueue.html
    "waf_byte_match_set"                  = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateByteMatchSet.html
    "waf_geo_match_set"                   = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateGeoMatchSet.html
    "waf_ipset"                           = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateIPSet.html
    "waf_rate_based_rule"                 = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRateBasedRule.html
    "waf_regex_match_set"                 = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRegexMatchSet.html
    "waf_regex_pattern_set"               = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRegexPatternSet.html
    "waf_rule"                            = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRule.html
    "waf_rule_group"                      = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateRuleGroup.html
    "waf_size_constraint_set"             = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateSizeConstraintSet.html
    "waf_sql_injection_match_set"         = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateSqlInjectionMatchSet.html
    "waf_web_acl"                         = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateWebACL.html
    "waf_xss_match_set"                   = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_CreateXssMatchSet.html
    "wafregional_byte_match_set"          = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateByteMatchSet.html
    "wafregional_geo_match_set"           = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateGeoMatchSet.html
    "wafregional_ipset"                   = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateIPSet.html
    "wafregional_rate_based_rule"         = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateRateBasedRule.html
    "wafregional_regex_match_set"         = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateRegexMatchSet.html
    "wafregional_regex_pattern_set"       = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateRegexPatternSet.html
    "wafregional_rule"                    = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateRule.html
    "wafregional_rule_group"              = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateRuleGroup.html
    "wafregional_size_constraint_set"     = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateSizeConstraintSet.html
    "wafregional_sql_injection_match_set" = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateSqlInjectionMatchSet.html
    "wafregional_web_acl"                 = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateWebACL.html
    "wafregional_xss_match_set"           = "128" #	https://docs.aws.amazon.com/waf/latest/APIReference/API_regional_CreateXssMatchSet.html
  }
}
