resource "github_repository_topics" "topics" {
  depends_on = [github_repository.repo]
  count      = length(var.github_repository_topics) > 0 ? 1 : 0
  repository = github_repository.repo.name
  topics     = var.github_repository_topics
}
