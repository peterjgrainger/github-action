workflow "Run Danger" {
  on = "pull_request"
  resolves = ["docker://petergrainger/danger-action"]
}

action "docker://petergrainger/danger-action" {
  uses = "danger/github-action@master"
  secrets = ["GITHUB_TOKEN"]
}
