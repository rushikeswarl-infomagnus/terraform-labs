variable "entries" {
  description = "Inventory labels and values to include."
  type        = map(string)
  default = {
    api    = "API service"
    worker = "Background worker"
  }
}
