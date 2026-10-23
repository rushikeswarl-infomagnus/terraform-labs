output "state_demo_path" {
  description = "Path of the resource used for the moved-block exercise."
  value       = local_file.legacy.filename
}
