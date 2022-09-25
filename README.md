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
| [aws_fsx_openzfs_file_system.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_openzfs_file_system) | resource |
| [aws_fsx_openzfs_snapshot.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_openzfs_snapshot) | resource |
| [aws_fsx_openzfs_volume.example](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/fsx_openzfs_volume) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_file_system"></a> [file\_system](#input\_file\_system) | n/a | <pre>object({<br>    storage_capacity    = number<br>    deployment_type     = string<br>    throughput_capacity = number<br>  })</pre> | n/a | yes |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | KMS key ARN | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | n/a | `list(any)` | n/a | yes |
| <a name="input_volume_name"></a> [volume\_name](#input\_volume\_name) | Volume Name | `string` | `"new"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_file_system"></a> [file\_system](#output\_file\_system) | n/a |
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
