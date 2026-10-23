output "document_paths" {
  description = "Paths of files created by the document module."
  value       = { for name, document in module.document : name => document.path }
}
