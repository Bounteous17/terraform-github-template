# locals {
#   github_project_column = {
#     names = concat(
#       var.github_project_column_defaults.names,
#       var.github_project_column.names,
#     )
#   }
# }

# resource "github_project_column" "column" {
#   depends_on = [github_organization_project.project]
#   project_id = github_organization_project.project.id

#   for_each = toset(local.github_project_column.names)
#   name     = each.value
# }
