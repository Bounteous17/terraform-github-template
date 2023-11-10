locals {
  github_repository = merge(
    var.github_repository_defaults,
    var.github_repository
  )
}

resource "github_repository" "repo" {
  name                   = local.github_repository.name
  description            = local.github_repository.description
  archive_on_destroy     = local.github_repository.archive_on_destroy
  allow_auto_merge       = local.github_repository.allow_auto_merge
  allow_merge_commit     = local.github_repository.allow_merge_commit
  allow_rebase_merge     = local.github_repository.allow_rebase_merge
  allow_squash_merge     = local.github_repository.allow_squash_merge
  allow_update_branch    = local.github_repository.allow_update_branch
  archived               = local.github_repository.archived
  auto_init              = local.github_repository.auto_init
  delete_branch_on_merge = local.github_repository.delete_branch_on_merge
  has_discussions        = local.github_repository.has_discussions
  has_downloads          = local.github_repository.has_downloads
  has_issues             = local.github_repository.has_issues
  has_projects           = local.github_repository.has_projects
  has_wiki               = local.github_repository.has_wiki
  is_template            = local.github_repository.is_template
  visibility             = local.github_repository.visibility
  vulnerability_alerts   = local.github_repository.vulnerability_alerts
}
