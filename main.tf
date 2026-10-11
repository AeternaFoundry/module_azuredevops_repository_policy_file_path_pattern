resource "azuredevops_repository_policy_file_path_pattern" "repository_policy_file_path_patterns" {
  for_each = var.repository_policy_file_path_patterns

  filepath_patterns = each.value.filepath_patterns
  project_id        = each.value.project_id
  blocking          = each.value.blocking
  enabled           = each.value.enabled
  repository_ids    = each.value.repository_ids

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

