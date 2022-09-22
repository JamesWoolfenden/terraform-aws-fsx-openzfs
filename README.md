# terraform-aws-fsx-openzfs

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-fsx-openzfs/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-fsx-openzfs)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-fsx-openzfs.svg)](https://github.com/JamesWoolfenden/terraform-aws-fsx-openzfs/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-fsx-openzfs.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-fsx-openzfs/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-fsx-openzfs/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-fsx-openzfs&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-fsx-openzfs/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-fsx-openzfs&benchmark=INFRASTRUCTURE+SECURITY)

Module to provision fsx-openzfs containers.

## Introduction

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "fsx-openzfs" {
  source           = "JamesWoolfenden/fsx-openzfs/aws"
  version          = "0.1.1"
  file_system = {
    storage_capacity    = 64
    deployment_type     = "SINGLE_AZ_1"
    throughput_capacity = 64
  }

  kms_key_id = aws_kms_key.example.arn
  subnet_ids = ["subnet-04338b6369d8288a5"]
}
```

## Costs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ecs_cluster.far](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster) | resource |
| [aws_ecs_service.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service) | resource |
| [aws_ecs_task_definition.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition) | resource |
| [aws_iam_policy.ecs-task-default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.ecs-task-default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.ecs-task-default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_security_group.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.egress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.ingress](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_iam_policy.ecs_task_execution](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy_document.assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_public_ip"></a> [assign\_public\_ip](#input\_assign\_public\_ip) | Assign a public IP address to the ENI (fsx-openzfs launch type only). Valid values are true or false. | `string` | `false` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | n/a | `string` | `"my-first-cluster"` | no |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags) | Implments the common\_tags tagging scheme | `map(any)` | n/a | yes |
| <a name="input_create_ecs_task_execution_role"></a> [create\_ecs\_task\_execution\_role](#input\_create\_ecs\_task\_execution\_role) | Specify true to indicate that ECS Task Execution IAM Role creation. | `string` | `true` | no |
| <a name="input_deployment_controller_type"></a> [deployment\_controller\_type](#input\_deployment\_controller\_type) | Type of deployment controller. Valid values: CODE\_DEPLOY, ECS. | `string` | `"ECS"` | no |
| <a name="input_deployment_maximum_percent"></a> [deployment\_maximum\_percent](#input\_deployment\_maximum\_percent) | The upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. | `string` | `200` | no |
| <a name="input_deployment_minimum_healthy_percent"></a> [deployment\_minimum\_healthy\_percent](#input\_deployment\_minimum\_healthy\_percent) | The lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment. | `string` | `100` | no |
| <a name="input_desired_count"></a> [desired\_count](#input\_desired\_count) | The number of instances of the task definition to place and keep running. | `string` | `0` | no |
| <a name="input_ecs_task_execution_role_arn"></a> [ecs\_task\_execution\_role\_arn](#input\_ecs\_task\_execution\_role\_arn) | The ARN of the ECS Task Execution IAM Role. | `string` | `""` | no |
| <a name="input_health_check_grace_period_seconds"></a> [health\_check\_grace\_period\_seconds](#input\_health\_check\_grace\_period\_seconds) | Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 7200. | `string` | `60` | no |
| <a name="input_iam_description"></a> [iam\_description](#input\_iam\_description) | The description of the IAM Role and the IAM Policy. | `string` | `"Managed by Terraform"` | no |
| <a name="input_iam_path"></a> [iam\_path](#input\_iam\_path) | Path in which to create the IAM Role and the IAM Policy. | `string` | `"/"` | no |
| <a name="input_ingress_cidr_blocks"></a> [ingress\_cidr\_blocks](#input\_ingress\_cidr\_blocks) | List of Ingress CIDR blocks. | `list(any)` | <pre>[<br>  "0.0.0.0/0"<br>]</pre> | no |
| <a name="input_lb"></a> [lb](#input\_lb) | n/a | `map(any)` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | The name of ecs service. | `string` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | The subnets associated with the task or service. | `list(any)` | n/a | yes |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | The ARN of the Load Balancer target group to associate with the service. | `string` | n/a | yes |
| <a name="input_task_definition"></a> [task\_definition](#input\_task\_definition) | n/a | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC Id to associate with ECS Service. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_service"></a> [ecs\_service](#output\_ecs\_service) | The ECS service. |
| <a name="output_ecs_task_definition"></a> [ecs\_task\_definition](#output\_ecs\_task\_definition) | The Full Task Definition (including both family and revision). |
| <a name="output_ecs_task_policy"></a> [ecs\_task\_policy](#output\_ecs\_task\_policy) | n/a |
| <a name="output_iam_role"></a> [iam\_role](#output\_iam\_role) | n/a |
| <a name="output_security_group_default"></a> [security\_group\_default](#output\_security\_group\_default) | The ECS Service security group. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-codebuild](https://github.com/jameswoolfenden/terraform-aws-codebuild) - Making a Build pipeline

## Help

**Got a question?**

File a GitHub [issue](https://github.com/jameswoolfenden/terraform-aws-codecommit/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/jameswoolfenden/terraform-aws-codecommit/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2021 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
