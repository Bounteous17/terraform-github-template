provider "github" {
  token = var.github_token
  owner = "bounteous17"
}

module "repositories" {
  source = "./repositories"
}
