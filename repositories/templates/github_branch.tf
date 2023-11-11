resource "github_branch" "default" {
  depends_on = [github_repository.repo]

  repository = github_repository.repo.name
  branch     = var.github_branch_default
}
