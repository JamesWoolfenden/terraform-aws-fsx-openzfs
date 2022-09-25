resource "aws_fsx_openzfs_snapshot" "example" {
  name      = "example"
  volume_id = aws_fsx_openzfs_file_system.example.root_volume_id
}
