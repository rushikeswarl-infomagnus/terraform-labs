run "inventory_has_expected_entries" {
  command = plan

  assert {
    condition     = length(output.entry_names) == 2
    error_message = "The default inventory should contain two entries."
  }

  assert {
    condition     = contains(output.entry_names, "api")
    error_message = "The inventory should contain the api entry."
  }
}
