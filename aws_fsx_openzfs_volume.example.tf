resource "aws_fsx_openzfs_volume" "example" {
  name             = var.volume_name
  parent_volume_id = aws_fsx_openzfs_file_system.example.root_volume_id
}
