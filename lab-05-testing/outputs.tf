output "entry_names" {
  description = "Sorted inventory entry names."
  value       = sort(keys(local_file.entry))
}
