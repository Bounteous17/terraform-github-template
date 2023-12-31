module "terraform-github-template" {
  source = "./templates"

  github_repository = {
    name        = "terraform-github-template"
    visibility  = "public"
    is_template = true
  }

  github_teams_repository = [{
    team_id    = "team-infra"
    permission = "admin"
  }]

  github_branch_protection_count = 0

  github_repository_topics = ["terraform", "github", "template"]
  github_branch_default    = "master"
}
