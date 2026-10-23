variable "services" {
  description = "Service names and the text to write for each service."
  type        = map(string)
  default = {
    api    = "API service is ready."
    worker = "Background worker is ready."
  }
}
