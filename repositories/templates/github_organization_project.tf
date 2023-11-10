# resource "github_organization_project" "project" {
#   depends_on = [github_repository.repo]
#   name       = github_repository.repo.name
#   body       = github_repository.repo.description
# }
