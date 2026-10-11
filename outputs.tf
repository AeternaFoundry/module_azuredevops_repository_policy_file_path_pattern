output "repository_policy_file_path_patterns_id" {
  description = "Map of id values across all repository_policy_file_path_patterns, keyed the same as var.repository_policy_file_path_patterns except keys with no id are omitted"
  value       = { for k, v in azuredevops_repository_policy_file_path_pattern.repository_policy_file_path_patterns : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_policy_file_path_patterns_blocking" {
  description = "Map of blocking values across all repository_policy_file_path_patterns, keyed the same as var.repository_policy_file_path_patterns except keys with no blocking are omitted"
  value       = { for k, v in azuredevops_repository_policy_file_path_pattern.repository_policy_file_path_patterns : k => v.blocking if v.blocking != null }
}
output "repository_policy_file_path_patterns_enabled" {
  description = "Map of enabled values across all repository_policy_file_path_patterns, keyed the same as var.repository_policy_file_path_patterns except keys with no enabled are omitted"
  value       = { for k, v in azuredevops_repository_policy_file_path_pattern.repository_policy_file_path_patterns : k => v.enabled if v.enabled != null }
}
output "repository_policy_file_path_patterns_filepath_patterns" {
  description = "Map of filepath_patterns values across all repository_policy_file_path_patterns, keyed the same as var.repository_policy_file_path_patterns except keys with no filepath_patterns are omitted"
  value       = { for k, v in azuredevops_repository_policy_file_path_pattern.repository_policy_file_path_patterns : k => v.filepath_patterns if v.filepath_patterns != null && length(v.filepath_patterns) > 0 }
}
output "repository_policy_file_path_patterns_project_id" {
  description = "Map of project_id values across all repository_policy_file_path_patterns, keyed the same as var.repository_policy_file_path_patterns except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_repository_policy_file_path_pattern.repository_policy_file_path_patterns : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "repository_policy_file_path_patterns_repository_ids" {
  description = "Map of repository_ids values across all repository_policy_file_path_patterns, keyed the same as var.repository_policy_file_path_patterns except keys with no repository_ids are omitted"
  value       = { for k, v in azuredevops_repository_policy_file_path_pattern.repository_policy_file_path_patterns : k => v.repository_ids if v.repository_ids != null && length(v.repository_ids) > 0 }
}

