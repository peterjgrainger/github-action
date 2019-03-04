workflow "Test Action Works" {
  on = "pull_request"
  resolves = ["Run Danger"]
}

action "Run Danger" {
  uses = "danger/github-action@master"
  secrets = ["GITHUB_TOKEN"]
}