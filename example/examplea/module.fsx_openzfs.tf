module "fsx_openzfs" {
  source = "../../"
  file_system = {
    storage_capacity    = 64
    deployment_type     = "SINGLE_AZ_1"
    throughput_capacity = 64
  }

  kms_key_id = aws_kms_key.example.arn
  subnet_ids = ["subnet-04338b6369d8288a5"]
}


resource "aws_kms_key" "example" {
  # checkov:skip=CKV2_AWS_64: For example only, key policy managed via IAM
  enable_key_rotation = true
}
