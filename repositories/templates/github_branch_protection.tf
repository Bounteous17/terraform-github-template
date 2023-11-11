locals {
  github_branch_protection = merge(
    var.github_branch_protection_defaults,
    var.github_branch_protection,
    {
      required_pull_request_reviews = merge(
        var.github_branch_protection_defaults.required_pull_request_reviews,
        var.github_branch_protection.required_pull_request_reviews
      )
    }
  )
}

resource "github_branch_protection" "main" {
  count         = var.github_branch_protection_count
  depends_on    = [github_repository.repo]
  repository_id = github_repository.repo.node_id

  pattern                         = github_branch_default.master.branch
  enforce_admins                  = local.github_branch_protection.enforce_admins
  allows_deletions                = local.github_branch_protection.allows_deletions
  allows_force_pushes             = local.github_branch_protection.allows_force_pushes
  require_signed_commits          = local.github_branch_protection.require_signed_commits
  require_conversation_resolution = local.github_branch_protection.require_conversation_resolution

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = local.github_branch_protection.required_pull_request_reviews.dismiss_stale_reviews
    restrict_dismissals             = local.github_branch_protection.required_pull_request_reviews.restrict_dismissals
    required_approving_review_count = local.github_branch_protection.required_pull_request_reviews.required_approving_review_count
    require_last_push_approval      = local.github_branch_protection.required_pull_request_reviews.require_last_push_approval
    pull_request_bypassers          = ["/Bounteous17"]

  }
}
