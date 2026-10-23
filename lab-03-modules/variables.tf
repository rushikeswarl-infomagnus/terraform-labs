variable "documents" {
  description = "Document names and contents to create."
  type        = map(string)
  default = {
    overview  = "A reusable Terraform module creates this file."
    checklist = "Modules make repeated infrastructure easier to maintain."
  }
}
