resource "github_branch_default" "master" {
  depends_on = [github_branch.master]

  repository = github_repository.repo.name
  branch     = var.github_branch_default
}
