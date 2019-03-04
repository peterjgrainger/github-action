workflow "Run Danger" {
  resolves = ["docker://petergrainger/danger-action"]
  on = "pull_request"
}

action "docker://petergrainger/danger-action" {
  uses = "docker://petergrainger/danger-action"
  secrets = ["GITHUB_TOKEN"]
}
