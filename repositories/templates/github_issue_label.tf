resource "github_issue_label" "issue_label" {
  depends_on = [github_repository.repo]
  for_each   = { for obj in var.github_issue_label_defaults : obj.name => obj }

  repository = github_repository.repo.name
  name       = each.value.name
  color      = each.value.color
}
