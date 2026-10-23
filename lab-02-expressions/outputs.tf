output "service_files" {
  description = "Paths of the generated service files."
  value       = { for name, file in local_file.service : name => file.filename }
}
