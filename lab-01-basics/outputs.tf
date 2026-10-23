output "welcome_file" {
  description = "Path to the generated welcome file."
  value       = local_file.welcome.filename
}
