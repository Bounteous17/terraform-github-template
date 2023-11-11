resource "github_branch_default" "default" {
  depends_on = [github_branch.default]

  repository = github_repository.repo.name
  branch     = var.github_branch_default
}
